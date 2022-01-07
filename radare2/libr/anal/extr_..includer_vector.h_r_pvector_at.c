
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ a; } ;
struct TYPE_5__ {TYPE_1__ v; } ;
typedef TYPE_2__ RPVector ;



__attribute__((used)) static inline void *r_pvector_at(const RPVector *vec, size_t index) {
 return ((void **)vec->v.a)[index];
}
