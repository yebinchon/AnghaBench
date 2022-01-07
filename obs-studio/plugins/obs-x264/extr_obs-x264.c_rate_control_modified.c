
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 scalar_t__ astrcmpi (char const*,char*) ;
 int obs_data_get_bool (int *,char*) ;
 char* obs_data_get_string (int *,char*) ;
 int * obs_properties_get (int *,char*) ;
 int obs_property_set_visible (int *,int) ;

__attribute__((used)) static bool rate_control_modified(obs_properties_t *ppts, obs_property_t *p,
      obs_data_t *settings)
{
 const char *rc = obs_data_get_string(settings, "rate_control");
 bool use_bufsize = obs_data_get_bool(settings, "use_bufsize");
 bool abr = astrcmpi(rc, "CBR") == 0 || astrcmpi(rc, "ABR") == 0;
 bool rc_crf = astrcmpi(rc, "CRF") == 0;

 p = obs_properties_get(ppts, "crf");
 obs_property_set_visible(p, !abr);

 p = obs_properties_get(ppts, "bitrate");
 obs_property_set_visible(p, !rc_crf);
 p = obs_properties_get(ppts, "use_bufsize");
 obs_property_set_visible(p, !rc_crf);
 p = obs_properties_get(ppts, "buffer_size");
 obs_property_set_visible(p, !rc_crf && use_bufsize);
 return 1;
}
