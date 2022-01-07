
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memcheck (int ) ;
 int realloc (void*,size_t) ;

__attribute__((used)) static void *
erealloc(void *ptr, size_t size)
{
 return memcheck(realloc(ptr, size));
}
