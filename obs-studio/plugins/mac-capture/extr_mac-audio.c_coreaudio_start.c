
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {int unit; scalar_t__ active; } ;
typedef int OSStatus ;


 int AudioOutputUnitStart (int ) ;
 int ca_success (int ,struct coreaudio_data*,char*,char*) ;

__attribute__((used)) static bool coreaudio_start(struct coreaudio_data *ca)
{
 OSStatus stat;

 if (ca->active)
  return 1;

 stat = AudioOutputUnitStart(ca->unit);
 return ca_success(stat, ca, "coreaudio_start", "start audio");
}
