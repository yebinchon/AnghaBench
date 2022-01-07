
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reference {int level; int addr; int baseaddr; int comma; int infile; char* input; int done; int computed_value; int delimiter; } ;


 int addr ;
 int baseaddr ;
 int comma ;
 int file ;
 int rd_expr (char const**,int ,int*,int,int) ;
 int sp ;

__attribute__((used)) static int compute_ref(struct reference *ref, int allow_invalid) {
 const char *ptr;
 int valid = 0;
 int backup_addr = addr;
 int backup_baseaddr = baseaddr;
 int backup_comma = comma;
 int backup_file = file;
 int backup_sp = sp;
 sp = ref->level;
 addr = ref->addr;
 baseaddr = ref->baseaddr;
 comma = ref->comma;
 file = ref->infile;
 ptr = ref->input;
 if (!ref->done) {
  ref->computed_value = rd_expr (&ptr, ref->delimiter,
   allow_invalid? &valid: ((void*)0),
   ref->level, 1);
  if (valid) {
   ref->done = 1;
  }
 }
 sp = backup_sp;
 addr = backup_addr;
 baseaddr = backup_baseaddr;
 comma = backup_comma;
 file = backup_file;
 return ref->computed_value;
}
