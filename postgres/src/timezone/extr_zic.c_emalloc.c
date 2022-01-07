
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int malloc (size_t) ;
 void* memcheck (int ) ;

__attribute__((used)) static void *
emalloc(size_t size)
{
 return memcheck(malloc(size));
}
