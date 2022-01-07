
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fls (int) ;

__attribute__((used)) static inline int
ag71xx_ring_size_order(int size)
{
 return fls(size - 1);
}
