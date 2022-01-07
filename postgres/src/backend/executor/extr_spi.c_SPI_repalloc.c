
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 void* repalloc (void*,int ) ;

void *
SPI_repalloc(void *pointer, Size size)
{

 return repalloc(pointer, size);
}
