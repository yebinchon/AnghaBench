
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_proplist ;


 int PA_PROP_APPLICATION_ICON_NAME ;
 int PA_PROP_APPLICATION_NAME ;
 int PA_PROP_MEDIA_ROLE ;
 int * pa_proplist_new () ;
 int pa_proplist_sets (int *,int ,char*) ;

__attribute__((used)) static pa_proplist *pulse_properties()
{
 pa_proplist *p = pa_proplist_new();

 pa_proplist_sets(p, PA_PROP_APPLICATION_NAME, "OBS");
 pa_proplist_sets(p, PA_PROP_APPLICATION_ICON_NAME, "obs");
 pa_proplist_sets(p, PA_PROP_MEDIA_ROLE, "production");

 return p;
}
