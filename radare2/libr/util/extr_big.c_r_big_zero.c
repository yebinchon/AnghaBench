
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t last; int sign; int * dgts; } ;
typedef TYPE_1__ RNumBig ;



__attribute__((used)) static inline void r_big_zero(RNumBig *n) {
 while ((n->last>0) && !n->dgts[n->last])
  n->last--;
        if (!n->last && !*n->dgts)
  n->sign = 1;
}
