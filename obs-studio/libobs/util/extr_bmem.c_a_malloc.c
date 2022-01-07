
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ALIGNMENT ;
 void* _aligned_malloc (size_t,size_t) ;
 void* malloc (size_t) ;

__attribute__((used)) static void *a_malloc(size_t size)
{
 return malloc(size);

}
