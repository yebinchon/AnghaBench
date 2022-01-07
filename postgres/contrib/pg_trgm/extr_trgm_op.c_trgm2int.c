
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32 ;
typedef int trgm ;



uint32
trgm2int(trgm *ptr)
{
 uint32 val = 0;

 val |= *(((unsigned char *) ptr));
 val <<= 8;
 val |= *(((unsigned char *) ptr) + 1);
 val <<= 8;
 val |= *(((unsigned char *) ptr) + 2);

 return val;
}
