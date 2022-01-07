
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int memory_exhausted (int ) ;
 int strerror (int ) ;

__attribute__((used)) static void *
memcheck(void *ptr)
{
 if (ptr == ((void*)0))
  memory_exhausted(strerror(errno));
 return ptr;
}
