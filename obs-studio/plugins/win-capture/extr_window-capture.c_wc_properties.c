
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int EXCLUDE_MINIMIZED ;
 int OBS_COMBO_FORMAT_INT ;
 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int TEXT_CAPTURE_CURSOR ;
 int TEXT_COMPATIBILITY ;
 int TEXT_MATCH_CLASS ;
 int TEXT_MATCH_EXE ;
 int TEXT_MATCH_PRIORITY ;
 int TEXT_MATCH_TITLE ;
 int TEXT_WINDOW ;
 int UNUSED_PARAMETER (void*) ;
 int WINDOW_PRIORITY_CLASS ;
 int WINDOW_PRIORITY_EXE ;
 int WINDOW_PRIORITY_TITLE ;
 int fill_window_list (int *,int ,int *) ;
 int obs_properties_add_bool (int *,char*,int ) ;
 int * obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_list_add_int (int *,int ,int ) ;

__attribute__((used)) static obs_properties_t *wc_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *ppts = obs_properties_create();
 obs_property_t *p;

 p = obs_properties_add_list(ppts, "window", TEXT_WINDOW,
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);
 fill_window_list(p, EXCLUDE_MINIMIZED, ((void*)0));

 p = obs_properties_add_list(ppts, "priority", TEXT_MATCH_PRIORITY,
        OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
 obs_property_list_add_int(p, TEXT_MATCH_TITLE, WINDOW_PRIORITY_TITLE);
 obs_property_list_add_int(p, TEXT_MATCH_CLASS, WINDOW_PRIORITY_CLASS);
 obs_property_list_add_int(p, TEXT_MATCH_EXE, WINDOW_PRIORITY_EXE);

 obs_properties_add_bool(ppts, "cursor", TEXT_CAPTURE_CURSOR);

 obs_properties_add_bool(ppts, "compatibility", TEXT_COMPATIBILITY);

 return ppts;
}
