
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_fader {int dummy; } ;
typedef int calldata_t ;


 int UNUSED_PARAMETER (int *) ;
 int obs_fader_detach_source (struct obs_fader*) ;

__attribute__((used)) static void fader_source_destroyed(void *vptr, calldata_t *calldata)
{
 UNUSED_PARAMETER(calldata);
 struct obs_fader *fader = (struct obs_fader *)vptr;

 obs_fader_detach_source(fader);
}
