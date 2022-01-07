
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; int key; } ;
typedef int RPanelsMenuItem ;
typedef TYPE_1__ HtPPKv ;


 int __free_menu_item (int *) ;
 int free (int ) ;

void __mht_free_kv(HtPPKv *kv) {
 free (kv->key);
 __free_menu_item ((RPanelsMenuItem *)kv->value);
}
