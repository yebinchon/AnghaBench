
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int obs_module_text (char*) ;
 int obs_properties_add_bool (int *,char*,int ) ;
 int obs_properties_add_int (int *,char*,int ,int,int,int) ;
 int * obs_properties_create () ;

__attribute__((used)) static obs_properties_t *jack_input_properties(void *unused)
{
 (void)unused;

 obs_properties_t *props = obs_properties_create();

 obs_properties_add_int(props, "channels", obs_module_text("Channels"),
          1, 8, 1);
 obs_properties_add_bool(props, "startjack",
    obs_module_text("StartJACKServer"));

 return props;
}
