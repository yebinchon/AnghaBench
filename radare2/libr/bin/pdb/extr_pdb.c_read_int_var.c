
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ R_PDB ;


 int eprintf (char*,char*) ;
 int r_buf_read (int ,int *,int) ;

__attribute__((used)) static int read_int_var(char *var_name, int *var, R_PDB *pdb) {
 if (var) {
  *var = 0;
 }
 int bytes_read = r_buf_read (pdb->buf, (ut8 *) var, 4);
 if (bytes_read != 4) {
  eprintf ("Error while reading from file '%s'\n", var_name);
  return 0;
 }
 return bytes_read;
}
