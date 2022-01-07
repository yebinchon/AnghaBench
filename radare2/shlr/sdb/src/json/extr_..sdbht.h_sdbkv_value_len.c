
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_4__ {int value_len; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ SdbKv ;



__attribute__((used)) static inline ut32 sdbkv_value_len(const SdbKv *kv) {
 return kv->base.value_len;
}
