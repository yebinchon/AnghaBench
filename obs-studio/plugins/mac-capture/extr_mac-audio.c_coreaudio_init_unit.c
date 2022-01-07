
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct coreaudio_data {int au_initialized; int unit; } ;
struct TYPE_3__ {int componentSubType; int componentType; } ;
typedef int OSStatus ;
typedef TYPE_1__ AudioComponentDescription ;
typedef int AudioComponent ;


 int AudioComponentFindNext (int *,TYPE_1__*) ;
 int AudioComponentInstanceNew (int ,int *) ;
 int ca_success (int ,struct coreaudio_data*,char*,char*) ;
 int ca_warn (struct coreaudio_data*,char*,char*) ;
 int kAudioUnitSubType_HALOutput ;
 int kAudioUnitType_Output ;

__attribute__((used)) static bool coreaudio_init_unit(struct coreaudio_data *ca)
{
 AudioComponentDescription desc = {
  .componentType = kAudioUnitType_Output,
  .componentSubType = kAudioUnitSubType_HALOutput};

 AudioComponent component = AudioComponentFindNext(((void*)0), &desc);
 if (!component) {
  ca_warn(ca, "coreaudio_init_unit", "find component failed");
  return 0;
 }

 OSStatus stat = AudioComponentInstanceNew(component, &ca->unit);
 if (!ca_success(stat, ca, "coreaudio_init_unit", "instance unit"))
  return 0;

 ca->au_initialized = 1;
 return 1;
}
