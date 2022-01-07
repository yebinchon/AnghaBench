
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hexagon_arch () ;

int
hexagon_if_arch
(int arch)
{
  return (hexagon_arch () == arch);
}
