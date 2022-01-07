
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Value; struct TYPE_4__* szKey; } ;
typedef TYPE_1__ Var ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void free_Var(Var* var) {
 if (var) {
  free (var->szKey);
  free (var->Value);
  free (var);
 }
}
