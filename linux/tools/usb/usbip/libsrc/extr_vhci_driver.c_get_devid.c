
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static unsigned long get_devid(uint8_t busnum, uint8_t devnum)
{
 return (busnum << 16) | devnum;
}
