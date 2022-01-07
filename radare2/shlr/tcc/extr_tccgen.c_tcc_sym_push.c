
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t; int ref; } ;
typedef TYPE_1__ CType ;


 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int sym_malloc () ;
 int sym_push (int ,TYPE_1__*,int ,int ) ;

int tcc_sym_push(char *typename, int typesize, int meta) {
 CType *new_type = (CType *) malloc (sizeof(CType));
 if (!new_type) {
  return 0;
 }
 new_type->ref = sym_malloc ();
 new_type->t = meta;

 if (!sym_push (0, new_type, 0, 0)) {
  return 0;
 }

 free (new_type);
 return 1;
}
