
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_monitor_info {int y; int x; int cy; int cx; } ;
struct dstr {int array; int member_0; } ;
typedef int obs_property_t ;


 int TEXT_MONITOR ;
 int dstr_catf (struct dstr*,char*,int ,int,int ,int ,int ,int ) ;
 int dstr_free (struct dstr*) ;
 int gs_get_duplicator_monitor_info (int,struct gs_monitor_info*) ;
 int obs_property_list_add_int (int *,int ,int) ;

__attribute__((used)) static bool get_monitor_props(obs_property_t *monitor_list, int monitor_idx)
{
 struct dstr monitor_desc = {0};
 struct gs_monitor_info info;

 if (!gs_get_duplicator_monitor_info(monitor_idx, &info))
  return 0;

 dstr_catf(&monitor_desc, "%s %d: %ldx%ld @ %ld,%ld", TEXT_MONITOR,
    monitor_idx + 1, info.cx, info.cy, info.x, info.y);

 obs_property_list_add_int(monitor_list, monitor_desc.array,
      monitor_idx);

 dstr_free(&monitor_desc);

 return 1;
}
