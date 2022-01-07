
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ SdbKv ;



__attribute__((used)) static inline char *sdbkv_value(const SdbKv *kv) {
 return (char *)kv->base.value;
}
