
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xtensa_isa_status ;
typedef int xtensa_isa ;


 int xtisa_errno ;

xtensa_isa_status
xtensa_isa_errno (xtensa_isa isa __attribute__ ((unused)))
{
  return xtisa_errno;
}
