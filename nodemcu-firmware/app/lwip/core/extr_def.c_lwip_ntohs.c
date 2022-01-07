
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;


 int lwip_htons (int ) ;

u16_t
lwip_ntohs(u16_t n)
{
  return lwip_htons(n);
}
