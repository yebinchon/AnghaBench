
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int UNUSED_PARAMETER (void*) ;
 int obs_module_text (char*) ;
 int obs_properties_add_int (int *,char*,int ,int,int,int) ;
 int * obs_properties_create () ;

__attribute__((used)) static obs_properties_t *enc_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *props = obs_properties_create();
 obs_properties_add_int(props, "bitrate", obs_module_text("Bitrate"), 64,
          1024, 32);
 return props;
}
