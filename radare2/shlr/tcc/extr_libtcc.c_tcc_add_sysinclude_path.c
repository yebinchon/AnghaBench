
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nb_sysinclude_paths; int sysinclude_paths; } ;
typedef TYPE_1__ TCCState ;


 int tcc_split_path (TYPE_1__*,void***,int *,char const*) ;

int tcc_add_sysinclude_path(TCCState *s, const char *pathname)
{
 tcc_split_path (s, (void ***) &s->sysinclude_paths, &s->nb_sysinclude_paths, pathname);
 return 0;
}
