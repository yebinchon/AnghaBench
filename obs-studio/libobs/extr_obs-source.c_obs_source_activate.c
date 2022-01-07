
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int activate_refs; int show_refs; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum view_type { ____Placeholder_view_type } view_type ;


 int MAIN_VIEW ;
 int activate_tree ;
 int obs_source_enum_active_tree (TYPE_1__*,int ,int *) ;
 int obs_source_valid (TYPE_1__*,char*) ;
 int os_atomic_inc_long (int *) ;
 int show_tree ;

void obs_source_activate(obs_source_t *source, enum view_type type)
{
 if (!obs_source_valid(source, "obs_source_activate"))
  return;

 os_atomic_inc_long(&source->show_refs);
 obs_source_enum_active_tree(source, show_tree, ((void*)0));

 if (type == MAIN_VIEW) {
  os_atomic_inc_long(&source->activate_refs);
  obs_source_enum_active_tree(source, activate_tree, ((void*)0));
 }
}
