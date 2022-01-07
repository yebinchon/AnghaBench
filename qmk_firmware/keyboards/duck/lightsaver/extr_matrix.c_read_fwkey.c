
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PINE ;

__attribute__((used)) static uint8_t read_fwkey(void)
{
  return PINE&(1<<2) ? 0 : (1<<0);
}
