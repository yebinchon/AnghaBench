
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int l; int h; } ;
typedef TYPE_1__ ppe_u64_t ;



__attribute__((used)) static inline void u64_add_u32(ppe_u64_t opt1, unsigned int opt2, ppe_u64_t *ret)
{
 ret->l = opt1.l + opt2;
 if ( ret->l < opt1.l || ret->l < opt2 )
  ret->h++;
}
