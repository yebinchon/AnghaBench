
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; struct TYPE_3__* name; } ;
typedef TYPE_1__ r_ne_resource ;


 int free (TYPE_1__*) ;
 int r_list_free (int ) ;

__attribute__((used)) static void __free_resource(void *resource) {
 r_ne_resource *res = (r_ne_resource *)resource;
 free (res->name);
 r_list_free (res->entry);
 free (res);
}
