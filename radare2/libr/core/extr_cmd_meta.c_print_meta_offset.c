
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
typedef int file ;
struct TYPE_3__ {int bin; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*,char*) ;
 int free (char*) ;
 int r_bin_addr2line (int ,int ,char*,int,int*) ;
 int r_cons_printf (char*,...) ;
 scalar_t__ r_file_exists (char*) ;
 char* r_file_slurp_line (char*,int,int ) ;

__attribute__((used)) static bool print_meta_offset(RCore *core, ut64 addr) {
 int line, line_old, i;
 char file[1024];

 int ret = r_bin_addr2line (core->bin, addr, file, sizeof (file) - 1, &line);
 if (ret) {
  r_cons_printf ("file: %s\nline: %d\n", file, line);
  line_old = line;
  if (line >= 2) {
   line -= 2;
  }
  if (r_file_exists (file)) {
   for (i = 0; i < 5; i++) {
    char *row = r_file_slurp_line (file, line + i, 0);
    if (row) {
     r_cons_printf ("%c %.3x  %s\n", line+i == line_old ? '>' : ' ', line+i, row);
     free (row);
    }
   }
  } else {
   eprintf ("Cannot open '%s'\n", file);
  }
 }
 return ret;
}
