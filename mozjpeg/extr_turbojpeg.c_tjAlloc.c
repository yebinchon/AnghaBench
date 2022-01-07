
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;

unsigned char *tjAlloc(int bytes)
{
 return (unsigned char *)malloc(bytes);
}
