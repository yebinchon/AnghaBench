
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
typedef int opbuf ;
struct TYPE_7__ {scalar_t__ syntax; int bits; } ;
struct TYPE_6__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int O_BINARY ;
 int O_RDONLY ;
 scalar_t__ R_ASM_SYNTAX_ATT ;
 scalar_t__ R_ASM_SYNTAX_INTEL ;
 int close (int) ;
 int eprintf (char*,...) ;
 int free (char*) ;
 int r_asm_op_set_buf (TYPE_1__*,int const*,int) ;
 int r_file_mkstemp (char*,char**) ;
 int * r_mem_mem (int *,int,int const*,int) ;
 int r_sandbox_open (char*,int,int) ;
 char* r_str_newf (char*,char const*,int ,char const*) ;
 int r_sys_cmdf (char*,char*,char*) ;
 int read (int,int *,int) ;
 int strlen (char*) ;
 int unlink (char*) ;
 int write (int,char*,int ) ;

__attribute__((used)) static int assemble(RAsm *a, RAsmOp *op, const char *buf) {
 char *ipath, *opath;
 const char *syntaxstr = "";
 int len = 0;

 int ifd = r_file_mkstemp ("r_as", &ipath);
 if (ifd == -1) {
  return -1;
 }

 int ofd = r_file_mkstemp ("r_as", &opath);
 if (ofd == -1) {
  free (ipath);
  close (ifd);
  return -1;
 }

 if (a->syntax == R_ASM_SYNTAX_INTEL) {
  syntaxstr = ".intel_syntax noprefix\n";
 }

 if (a->syntax == R_ASM_SYNTAX_ATT) {
  syntaxstr = ".att_syntax\n";
 }

 char *asm_buf = r_str_newf (
   "%s.code%i\n"
   ".ascii \"BEGINMARK\"\n"
   "%s\n"
   ".ascii \"ENDMARK\"\n",
   syntaxstr, a->bits, buf);
 write (ifd, asm_buf, strlen (asm_buf));
 close (ifd);
 free (asm_buf);

 if (!r_sys_cmdf ("as %s -o %s", ipath, opath)) {
  const ut8 *begin, *end;
  close (ofd);

  ofd = r_sandbox_open (opath, O_BINARY|O_RDONLY, 0644);
  if (ofd < 0) {
   free (ipath);
   free (opath);
   return -1;
  }
  ut8 opbuf[512] = {0};
  len = read (ofd, opbuf, sizeof (opbuf));
  begin = r_mem_mem (opbuf, len, (const ut8*)"BEGINMARK", 9);
  end = r_mem_mem (opbuf, len, (const ut8*)"ENDMARK", 7);
  if (!begin || !end) {
   eprintf ("Cannot find water marks\n");
   len = 0;
  } else {
   len = (int)(size_t)(end - begin - 9);
   if (len > 0) {
    r_asm_op_set_buf (op, begin + 9, len);
   } else {
    len = 0;
   }
  }
 } else {
  eprintf ("Error running: as %s -o %s", ipath, opath);
  len = 0;
 }

 close (ofd);

 unlink (ipath);
 unlink (opath);
 free (ipath);
 free (opath);

 op->size = len;
 return len;
}
