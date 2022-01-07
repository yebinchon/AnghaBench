
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ HtUPKv ;


 int free (int ) ;

__attribute__((used)) static void attribute_free_kv(HtUPKv *kv) {
 free (kv->value);
}
