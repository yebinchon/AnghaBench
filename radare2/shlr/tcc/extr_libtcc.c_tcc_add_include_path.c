
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nb_include_paths; int include_paths; } ;
typedef TYPE_1__ TCCState ;


 int tcc_split_path (TYPE_1__*,void***,int *,char const*) ;

int tcc_add_include_path(TCCState *s, const char *pathname)
{
 tcc_split_path (s, (void ***) &s->include_paths, &s->nb_include_paths, pathname);
 return 0;
}
