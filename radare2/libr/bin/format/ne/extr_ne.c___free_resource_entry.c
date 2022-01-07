
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* name; } ;
typedef TYPE_1__ r_ne_resource_entry ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void __free_resource_entry(void *entry) {
 r_ne_resource_entry *en = (r_ne_resource_entry *)entry;
 free (en->name);
 free (en);
}
