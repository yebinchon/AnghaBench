
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cleanup_s {int type; int arg; int (* cleanup ) (int,int ) ;} ;
struct TYPE_4__ {int used; } ;


 TYPE_1__ cleanups ;
 int fpm_array_free (TYPE_1__*) ;
 struct cleanup_s* fpm_array_item_last (TYPE_1__*) ;
 int stub1 (int,int ) ;

void fpm_cleanups_run(int type)
{
 struct cleanup_s *c = fpm_array_item_last(&cleanups);
 int cl = cleanups.used;

 for ( ; cl--; c--) {
  if (c->type & type) {
   c->cleanup(type, c->arg);
  }
 }

 fpm_array_free(&cleanups);
}
