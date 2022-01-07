
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int show_refs; int activate_refs; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum view_type { ____Placeholder_view_type } view_type ;


 int AUX_VIEW ;
 int MAIN_VIEW ;
 int obs_ptr_valid (TYPE_1__*,char*) ;
 int obs_source_deactivate (TYPE_1__*,int) ;

void obs_source_remove_active_child(obs_source_t *parent, obs_source_t *child)
{
 if (!obs_ptr_valid(parent, "obs_source_remove_active_child"))
  return;
 if (!obs_ptr_valid(child, "obs_source_remove_active_child"))
  return;

 for (int i = 0; i < parent->show_refs; i++) {
  enum view_type type;
  type = (i < parent->activate_refs) ? MAIN_VIEW : AUX_VIEW;
  obs_source_deactivate(child, type);
 }
}
