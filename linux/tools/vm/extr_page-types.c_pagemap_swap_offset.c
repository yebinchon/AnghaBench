
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PM_SWAP ;
 unsigned long PM_SWAP_OFFSET (int) ;

__attribute__((used)) static unsigned long pagemap_swap_offset(uint64_t val)
{
 return val & PM_SWAP ? PM_SWAP_OFFSET(val) : 0;
}
