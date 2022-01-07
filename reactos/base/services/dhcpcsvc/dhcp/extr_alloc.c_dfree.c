
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int warning (char*,char*) ;

void
dfree(void *ptr, char *name)
{
 if (!ptr) {
  warning("dfree %s: free on null pointer.", name);
  return;
 }
 free(ptr);
}
