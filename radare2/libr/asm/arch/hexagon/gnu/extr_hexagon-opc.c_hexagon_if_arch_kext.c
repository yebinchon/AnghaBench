
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hexagon_if_arch_v4 () ;
 scalar_t__ hexagon_if_arch_v5 () ;

int
hexagon_if_arch_kext
(void)
{
  return (hexagon_if_arch_v4 () || hexagon_if_arch_v5 ());
}
