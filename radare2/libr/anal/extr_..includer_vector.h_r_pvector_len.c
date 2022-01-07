
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t len; } ;
struct TYPE_5__ {TYPE_1__ v; } ;
typedef TYPE_2__ RPVector ;



__attribute__((used)) static inline size_t r_pvector_len(const RPVector *vec) {
 return vec->v.len;
}
