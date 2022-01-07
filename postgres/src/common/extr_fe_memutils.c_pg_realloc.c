
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* _ (char*) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 void* realloc (void*,size_t) ;
 int stderr ;

void *
pg_realloc(void *ptr, size_t size)
{
 void *tmp;


 if (ptr == ((void*)0) && size == 0)
  size = 1;
 tmp = realloc(ptr, size);
 if (!tmp)
 {
  fprintf(stderr, _("out of memory\n"));
  exit(EXIT_FAILURE);
 }
 return tmp;
}
