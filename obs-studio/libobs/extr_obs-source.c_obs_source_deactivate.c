
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int activate_refs; int show_refs; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum view_type { ____Placeholder_view_type } view_type ;


 int MAIN_VIEW ;
 int deactivate_tree ;
 int hide_tree ;
 int obs_source_enum_active_tree (TYPE_1__*,int ,int *) ;
 int obs_source_valid (TYPE_1__*,char*) ;
 int os_atomic_dec_long (int *) ;
 scalar_t__ os_atomic_load_long (int *) ;

void obs_source_deactivate(obs_source_t *source, enum view_type type)
{
 if (!obs_source_valid(source, "obs_source_deactivate"))
  return;

 if (os_atomic_load_long(&source->show_refs) > 0) {
  os_atomic_dec_long(&source->show_refs);
  obs_source_enum_active_tree(source, hide_tree, ((void*)0));
 }

 if (type == MAIN_VIEW) {
  if (os_atomic_load_long(&source->activate_refs) > 0) {
   os_atomic_dec_long(&source->activate_refs);
   obs_source_enum_active_tree(source, deactivate_tree,
          ((void*)0));
  }
 }
}
