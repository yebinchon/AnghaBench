
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vringh_range {scalar_t__ offset; scalar_t__ end_incl; scalar_t__ start; } ;
struct vringh {int dummy; } ;


 scalar_t__ __user_addr_max ;
 scalar_t__ __user_addr_min ;
 scalar_t__ user_addr_offset ;

__attribute__((used)) static bool getrange_iov(struct vringh *vrh, u64 addr, struct vringh_range *r)
{
 if (addr < (u64)(unsigned long)__user_addr_min - user_addr_offset)
  return 0;
 if (addr >= (u64)(unsigned long)__user_addr_max - user_addr_offset)
  return 0;

 r->start = (u64)(unsigned long)__user_addr_min - user_addr_offset;
 r->end_incl = (u64)(unsigned long)__user_addr_max - 1 - user_addr_offset;
 r->offset = user_addr_offset;
 return 1;
}
