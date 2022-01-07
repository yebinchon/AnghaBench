
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint16 ;


 int HEAP_LOCK_MASK ;
 int HEAP_XMAX_IS_MULTI ;
 int HEAP_XMAX_LOCK_ONLY ;

__attribute__((used)) static inline bool
xmax_infomask_changed(uint16 new_infomask, uint16 old_infomask)
{
 const uint16 interesting =
 HEAP_XMAX_IS_MULTI | HEAP_XMAX_LOCK_ONLY | HEAP_LOCK_MASK;

 if ((new_infomask & interesting) != (old_infomask & interesting))
  return 1;

 return 0;
}
