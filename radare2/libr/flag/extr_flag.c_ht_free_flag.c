
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int key; } ;
typedef TYPE_1__ HtPPKv ;


 int free (int ) ;
 int r_flag_item_free (int ) ;

__attribute__((used)) static void ht_free_flag(HtPPKv *kv) {
 free (kv->key);
 r_flag_item_free (kv->value);
}
