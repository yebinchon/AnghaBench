
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int name; } ;
typedef TYPE_1__ OBJ_NAME ;


 int OBJ_NAME_remove (int ,scalar_t__) ;
 scalar_t__ free_type ;

__attribute__((used)) static void names_lh_free_doall(OBJ_NAME *onp)
{
    if (onp == ((void*)0))
        return;

    if (free_type < 0 || free_type == onp->type)
        OBJ_NAME_remove(onp->name, onp->type);
}
