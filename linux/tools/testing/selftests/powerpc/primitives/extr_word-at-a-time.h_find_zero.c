
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long count_masked_bytes (unsigned long) ;

__attribute__((used)) static inline unsigned long find_zero(unsigned long mask)
{
 return count_masked_bytes(mask);
}
