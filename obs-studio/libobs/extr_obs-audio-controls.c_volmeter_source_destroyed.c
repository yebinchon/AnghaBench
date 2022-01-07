
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_volmeter {int dummy; } ;
typedef int calldata_t ;


 int UNUSED_PARAMETER (int *) ;
 int obs_volmeter_detach_source (struct obs_volmeter*) ;

__attribute__((used)) static void volmeter_source_destroyed(void *vptr, calldata_t *calldata)
{
 UNUSED_PARAMETER(calldata);
 struct obs_volmeter *volmeter = (struct obs_volmeter *)vptr;

 obs_volmeter_detach_source(volmeter);
}
