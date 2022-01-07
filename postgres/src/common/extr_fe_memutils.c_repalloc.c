
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 void* pg_realloc (void*,int ) ;

void *
repalloc(void *pointer, Size size)
{
 return pg_realloc(pointer, size);
}
