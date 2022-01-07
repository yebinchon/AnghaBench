
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int Sdb ;
typedef int RStack ;
typedef int RCore ;


 int Fhandled (int ) ;
 int eprintf (char*) ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 int r_stack_push (int *,void*) ;
 int sdb_num_get (int *,int ,int *) ;
 int sdb_num_set (int *,int ,int,int ) ;

void addTarget(RCore *core, RStack *stack, Sdb *db, ut64 addr) {
 if (!sdb_num_get (db, Fhandled(addr), ((void*)0))) {
  ut64* value = (ut64*) malloc (1 * sizeof (ut64));
  if (!value) {
   eprintf ("Failed to allocate memory for address stack\n");
   return;
  }
  *value = addr;
  if (!r_stack_push (stack, (void*)value)) {
   eprintf ("Failed to push address on stack\n");
   free (value);
   return;
  }
  sdb_num_set (db, Fhandled (addr), 1, 0);
 }
}
