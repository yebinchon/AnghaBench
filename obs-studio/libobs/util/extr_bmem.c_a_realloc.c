
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGNMENT ;
 void* _aligned_realloc (void*,size_t,int ) ;
 void* a_malloc (size_t) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *a_realloc(void *ptr, size_t size)
{
 return realloc(ptr, size);

}
