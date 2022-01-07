
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {int active; int unit; } ;
typedef int OSStatus ;


 int AudioOutputUnitStop (int ) ;
 int ca_success (int ,struct coreaudio_data*,char*,char*) ;

__attribute__((used)) static void coreaudio_stop(struct coreaudio_data *ca)
{
 OSStatus stat;

 if (!ca->active)
  return;

 ca->active = 0;

 stat = AudioOutputUnitStop(ca->unit);
 ca_success(stat, ca, "coreaudio_stop", "stop audio");
}
