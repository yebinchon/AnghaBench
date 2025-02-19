
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 scalar_t__ astrcmpi (char const*,char*) ;
 char* obs_data_get_string (int *,char*) ;
 int * obs_properties_get (int *,char*) ;
 int obs_property_set_visible (int *,int) ;

__attribute__((used)) static bool rate_control_modified(obs_properties_t *ppts, obs_property_t *p,
      obs_data_t *settings)
{
 const char *rate_control =
  obs_data_get_string(settings, "rate_control");

 bool bVisible = astrcmpi(rate_control, "VCM") == 0 ||
   astrcmpi(rate_control, "VBR") == 0;
 p = obs_properties_get(ppts, "max_bitrate");
 obs_property_set_visible(p, bVisible);

 bVisible = astrcmpi(rate_control, "CQP") == 0 ||
     astrcmpi(rate_control, "LA_ICQ") == 0 ||
     astrcmpi(rate_control, "ICQ") == 0;
 p = obs_properties_get(ppts, "bitrate");
 obs_property_set_visible(p, !bVisible);

 bVisible = astrcmpi(rate_control, "AVBR") == 0;
 p = obs_properties_get(ppts, "accuracy");
 obs_property_set_visible(p, bVisible);
 p = obs_properties_get(ppts, "convergence");
 obs_property_set_visible(p, bVisible);

 bVisible = astrcmpi(rate_control, "CQP") == 0;
 p = obs_properties_get(ppts, "qpi");
 obs_property_set_visible(p, bVisible);
 p = obs_properties_get(ppts, "qpb");
 obs_property_set_visible(p, bVisible);
 p = obs_properties_get(ppts, "qpp");
 obs_property_set_visible(p, bVisible);

 bVisible = astrcmpi(rate_control, "ICQ") == 0 ||
     astrcmpi(rate_control, "LA_ICQ") == 0;
 p = obs_properties_get(ppts, "icq_quality");
 obs_property_set_visible(p, bVisible);

 bVisible = astrcmpi(rate_control, "LA_ICQ") == 0 ||
     astrcmpi(rate_control, "LA_CBR") == 0 ||
     astrcmpi(rate_control, "LA_VBR") == 0;
 p = obs_properties_get(ppts, "la_depth");
 obs_property_set_visible(p, bVisible);

 bVisible = astrcmpi(rate_control, "CBR") == 0 ||
     astrcmpi(rate_control, "VBR") == 0 ||
     astrcmpi(rate_control, "AVBR") == 0;
 p = obs_properties_get(ppts, "mbbrc");
 obs_property_set_visible(p, bVisible);

 return 1;
}
