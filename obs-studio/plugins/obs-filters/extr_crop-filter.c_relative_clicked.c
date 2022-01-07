
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int UNUSED_PARAMETER (int *) ;
 int obs_data_get_bool (int *,char*) ;
 char* obs_module_text (char*) ;
 int obs_properties_get (int *,char*) ;
 int obs_property_set_description (int ,char*) ;
 int obs_property_set_visible (int ,int) ;

__attribute__((used)) static bool relative_clicked(obs_properties_t *props, obs_property_t *p,
        obs_data_t *settings)
{
 bool relative = obs_data_get_bool(settings, "relative");

 obs_property_set_description(obs_properties_get(props, "left"),
         relative ? obs_module_text("Crop.Left")
           : "X");
 obs_property_set_description(obs_properties_get(props, "top"),
         relative ? obs_module_text("Crop.Top")
           : "Y");

 obs_property_set_visible(obs_properties_get(props, "right"), relative);
 obs_property_set_visible(obs_properties_get(props, "bottom"), relative);
 obs_property_set_visible(obs_properties_get(props, "cx"), !relative);
 obs_property_set_visible(obs_properties_get(props, "cy"), !relative);

 UNUSED_PARAMETER(p);
 return 1;
}
