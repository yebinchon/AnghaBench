
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int S_SAMPLING ;
 int S_SAMPLING_AREA ;
 int S_SAMPLING_BILINEAR ;
 int S_SAMPLING_LANCZOS ;
 int S_SAMPLING_POINT ;
 int S_UNDISTORT ;
 int UNUSED_PARAMETER (int *) ;
 scalar_t__ astrcmpi (char const*,int ) ;
 char* obs_data_get_string (int *,int ) ;
 int obs_properties_get (int *,int ) ;
 int obs_property_set_visible (int ,int) ;

__attribute__((used)) static bool sampling_modified(obs_properties_t *props, obs_property_t *p,
         obs_data_t *settings)
{
 const char *sampling = obs_data_get_string(settings, S_SAMPLING);

 bool has_undistort;
 if (astrcmpi(sampling, S_SAMPLING_POINT) == 0) {
  has_undistort = 0;
 } else if (astrcmpi(sampling, S_SAMPLING_BILINEAR) == 0) {
  has_undistort = 0;
 } else if (astrcmpi(sampling, S_SAMPLING_LANCZOS) == 0) {
  has_undistort = 1;
 } else if (astrcmpi(sampling, S_SAMPLING_AREA) == 0) {
  has_undistort = 0;
 } else {
  has_undistort = 1;
 }

 obs_property_set_visible(obs_properties_get(props, S_UNDISTORT),
     has_undistort);

 UNUSED_PARAMETER(p);
 return 1;
}
