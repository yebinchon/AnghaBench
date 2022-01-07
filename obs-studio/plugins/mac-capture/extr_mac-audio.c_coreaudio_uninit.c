
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {int au_initialized; int * buf_list; int * unit; } ;
typedef int OSStatus ;


 int AudioComponentInstanceDispose (int *) ;
 int AudioUnitUninitialize (int *) ;
 int buf_list_free (int *) ;
 int ca_success (int ,struct coreaudio_data*,char*,char*) ;
 int coreaudio_remove_hooks (struct coreaudio_data*) ;
 int coreaudio_stop (struct coreaudio_data*) ;

__attribute__((used)) static void coreaudio_uninit(struct coreaudio_data *ca)
{
 if (!ca->au_initialized)
  return;

 if (ca->unit) {
  coreaudio_stop(ca);

  OSStatus stat = AudioUnitUninitialize(ca->unit);
  ca_success(stat, ca, "coreaudio_uninit", "uninitialize");

  coreaudio_remove_hooks(ca);

  stat = AudioComponentInstanceDispose(ca->unit);
  ca_success(stat, ca, "coreaudio_uninit", "dispose");

  ca->unit = ((void*)0);
 }

 ca->au_initialized = 0;

 buf_list_free(ca->buf_list);
 ca->buf_list = ((void*)0);
}
