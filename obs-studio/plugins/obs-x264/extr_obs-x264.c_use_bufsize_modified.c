
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

__attribute__((used)) static bool use_bufsize_modified(obs_properties_t *ppts, obs_property_t *p,
     obs_data_t *settings)
{
 bool use_bufsize = obs_data_get_bool(settings, "use_bufsize");
 const char *rc = obs_data_get_string(settings, "rate_control");
 bool rc_crf = astrcmpi(rc, "CRF") == 0;

 p = obs_properties_get(ppts, "buffer_size");
 obs_property_set_visible(p, use_bufsize && !rc_crf);
 return 1;
}
