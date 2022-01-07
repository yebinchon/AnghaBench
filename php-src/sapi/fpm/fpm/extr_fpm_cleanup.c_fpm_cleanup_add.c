
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup_s {int type; void (* cleanup ) (int,void*) ;void* arg; } ;


 int cleanups ;
 struct cleanup_s* fpm_array_push (int *) ;

int fpm_cleanup_add(int type, void (*cleanup)(int, void *), void *arg)
{
 struct cleanup_s *c;

 c = fpm_array_push(&cleanups);

 if (!c) {
  return -1;
 }

 c->type = type;
 c->cleanup = cleanup;
 c->arg = arg;

 return 0;
}
