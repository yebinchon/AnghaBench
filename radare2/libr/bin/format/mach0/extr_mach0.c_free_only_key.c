
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; } ;
typedef TYPE_1__ HtPPKv ;


 int free (int ) ;

__attribute__((used)) static void free_only_key(HtPPKv *kv) {
 free (kv->key);
}
