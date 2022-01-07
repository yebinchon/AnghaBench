
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int MAKEWORD (int,int) ;
 int WSAStartup (int ,int *) ;
 int flv_output_info ;
 int ftl_output_info ;
 int null_output_info ;
 int obs_register_output (int *) ;
 int rtmp_output_info ;

bool obs_module_load(void)
{





 obs_register_output(&rtmp_output_info);
 obs_register_output(&null_output_info);
 obs_register_output(&flv_output_info);



 return 1;
}
