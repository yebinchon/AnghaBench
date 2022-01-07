
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ monitor_source; int monitor_source_name; int description; } ;
typedef TYPE_1__ pa_sink_info ;
typedef int pa_context ;
typedef int obs_property_t ;


 scalar_t__ PA_INVALID_INDEX ;
 int UNUSED_PARAMETER (int *) ;
 int obs_property_list_add_string (int *,int ,int ) ;
 int pulse_signal (int ) ;

__attribute__((used)) static void pulse_output_info(pa_context *c, const pa_sink_info *i, int eol,
         void *userdata)
{
 UNUSED_PARAMETER(c);
 if (eol != 0 || i->monitor_source == PA_INVALID_INDEX)
  goto skip;

 obs_property_list_add_string((obs_property_t *)userdata, i->description,
         i->monitor_source_name);

skip:
 pulse_signal(0);
}
