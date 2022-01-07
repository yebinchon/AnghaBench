
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int UNUSED_PARAMETER (void*) ;
 int obs_module_text (char*) ;
 int obs_properties_add_int (int *,char*,int ,int,int,int) ;
 int * obs_properties_create () ;

__attribute__((used)) static obs_properties_t *ftl_stream_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *props = obs_properties_create();
 obs_properties_add_int(props, "peak_bitrate_kbps",
          obs_module_text("FTLStream.PeakBitrate"), 1000,
          10000, 500);

 return props;
}
