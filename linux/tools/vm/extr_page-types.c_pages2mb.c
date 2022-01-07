
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long page_size ;

__attribute__((used)) static unsigned long pages2mb(unsigned long pages)
{
 return (pages * page_size) >> 20;
}
