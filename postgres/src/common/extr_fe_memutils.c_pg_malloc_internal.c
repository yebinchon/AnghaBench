
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int MCXT_ALLOC_NO_OOM ;
 int MCXT_ALLOC_ZERO ;
 int MemSet (void*,int ,size_t) ;
 char* _ (char*) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 void* malloc (size_t) ;
 int stderr ;

__attribute__((used)) static inline void *
pg_malloc_internal(size_t size, int flags)
{
 void *tmp;


 if (size == 0)
  size = 1;
 tmp = malloc(size);
 if (tmp == ((void*)0))
 {
  if ((flags & MCXT_ALLOC_NO_OOM) == 0)
  {
   fprintf(stderr, _("out of memory\n"));
   exit(EXIT_FAILURE);
  }
  return ((void*)0);
 }

 if ((flags & MCXT_ALLOC_ZERO) != 0)
  MemSet(tmp, 0, size);
 return tmp;
}
