
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int buf ;
struct TYPE_6__ {int bits; } ;
struct TYPE_5__ {int size; int buf; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int ARM32_AS ;
 int ARM64_AS ;
 int O_BINARY ;
 int O_RDONLY ;
 int close (int) ;
 int eprintf (char*,...) ;
 int free (char*) ;
 int r_file_mkstemp (char*,char**) ;
 int * r_mem_mem (int *,int,int const*,int) ;
 int r_sandbox_open (char*,int,int) ;
 char* r_str_newf (char*,char const*,char const*) ;
 int r_strbuf_setbin (int *,int const*,int) ;
 int r_sys_cmdf (char*,char*,char*,char*) ;
 char* r_sys_getenv (char*) ;
 int read (int,int *,int) ;
 char* strdup (int ) ;
 int strlen (char*) ;
 int unlink (char*) ;
 int write (int,char*,int ) ;

__attribute__((used)) static int assemble(RAsm *a, RAsmOp *op, const char *buf) {
 const char *bitconfig = "";
 char *ipath, *opath;
 char *as = ((void*)0);

 int ifd = r_file_mkstemp ("r_as", &ipath);
 if (ifd == -1) {
  return -1;
 }

 int ofd = r_file_mkstemp ("r_as", &opath);
 if (ofd == -1) {
  free (ipath);
  return -1;
 }

 as = r_sys_getenv ("ARM_AS");
 if (!as || !*as) {
  free (as);
  if (a->bits == 64) {
   as = strdup (ARM64_AS);
  } else {
   as = strdup (ARM32_AS);
  }
 }
 if (a->bits == 16) {
  bitconfig = ".thumb";
 }

 char *asm_buf = r_str_newf ("%s\n"
   ".ascii \"BEGINMARK\"\n"
   "%s\n"
   ".ascii \"ENDMARK\"\n",
   bitconfig, buf);
 if (asm_buf) {
  (void)write (ifd, asm_buf, strlen (asm_buf));
  (void)close (ifd);
  free (asm_buf);
 }

 int len = 0;
 if (!r_sys_cmdf ("%s %s -o %s", as, ipath, opath)) {
  const ut8 *begin, *end;
  close (ofd);
  ofd = r_sandbox_open (opath, O_BINARY|O_RDONLY, 0644);
  if (ofd < 0) {
   free (as);
   free (ipath);
   free (opath);
   return -1;
  }
  ut8 buf[4096];
  len = read (ofd, buf, sizeof (buf));
  begin = r_mem_mem (buf, len, (const ut8*)"BEGINMARK", 9);
  end = r_mem_mem (buf, len, (const ut8*)"ENDMARK", 7);
  if (!begin || !end) {
   eprintf ("Cannot find water marks\n");
   len = 0;
  } else {
   len = (int)(size_t)(end - begin - 9);
   if (len > 0) {
    r_strbuf_setbin (&op->buf, begin + 9, len);
   } else {
    len = 0;
   }
  }
 } else {
  eprintf ("Error running: %s %s -o %s", as, ipath, opath);
  eprintf ("export PATH=~/NDK/toolchains/arm-linux*/prebuilt/darwin-arm_64/bin\n");
 }

 close (ofd);

 unlink (ipath);
 unlink (opath);
 free (ipath);
 free (opath);
 free (as);

 return op->size = len;
}
