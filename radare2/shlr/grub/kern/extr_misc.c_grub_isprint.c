
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
grub_isprint (int c)
{
  return (c >= ' ' && c <= '~');
}
