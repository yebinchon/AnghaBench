
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct duplicator_capture {int dummy; } ;
typedef int obs_data_t ;


 int update_settings (struct duplicator_capture*,int *) ;

__attribute__((used)) static void duplicator_capture_update(void *data, obs_data_t *settings)
{
 struct duplicator_capture *mc = data;
 update_settings(mc, settings);
}
