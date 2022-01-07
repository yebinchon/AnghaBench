
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {int au_initialized; int device_name; int unit; int device_id; } ;
typedef int OSStatus ;


 int AudioUnitInitialize (int ) ;
 int IO_TYPE_INPUT ;
 int IO_TYPE_OUTPUT ;
 int LOG_INFO ;
 int SCOPE_GLOBAL ;
 int blog (int ,char*,int ) ;
 int ca_success (int ,struct coreaudio_data*,char*,char*) ;
 int coreaudio_get_device_name (struct coreaudio_data*) ;
 int coreaudio_init_buffer (struct coreaudio_data*) ;
 int coreaudio_init_format (struct coreaudio_data*) ;
 int coreaudio_init_hooks (struct coreaudio_data*) ;
 int coreaudio_init_unit (struct coreaudio_data*) ;
 int coreaudio_start (struct coreaudio_data*) ;
 int coreaudio_uninit (struct coreaudio_data*) ;
 int enable_io (struct coreaudio_data*,int ,int) ;
 int find_device_id_by_uid (struct coreaudio_data*) ;
 int kAudioOutputUnitProperty_CurrentDevice ;
 int set_property (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static bool coreaudio_init(struct coreaudio_data *ca)
{
 OSStatus stat;

 if (ca->au_initialized)
  return 1;

 if (!find_device_id_by_uid(ca))
  return 0;
 if (!coreaudio_get_device_name(ca))
  return 0;
 if (!coreaudio_init_unit(ca))
  return 0;

 stat = enable_io(ca, IO_TYPE_INPUT, 1);
 if (!ca_success(stat, ca, "coreaudio_init", "enable input io"))
  goto fail;

 stat = enable_io(ca, IO_TYPE_OUTPUT, 0);
 if (!ca_success(stat, ca, "coreaudio_init", "disable output io"))
  goto fail;

 stat = set_property(ca->unit, kAudioOutputUnitProperty_CurrentDevice,
       SCOPE_GLOBAL, 0, &ca->device_id,
       sizeof(ca->device_id));
 if (!ca_success(stat, ca, "coreaudio_init", "set current device"))
  goto fail;

 if (!coreaudio_init_format(ca))
  goto fail;
 if (!coreaudio_init_buffer(ca))
  goto fail;
 if (!coreaudio_init_hooks(ca))
  goto fail;

 stat = AudioUnitInitialize(ca->unit);
 if (!ca_success(stat, ca, "coreaudio_initialize", "initialize"))
  goto fail;

 if (!coreaudio_start(ca))
  goto fail;

 blog(LOG_INFO, "coreaudio: device '%s' initialized", ca->device_name);
 return ca->au_initialized;

fail:
 coreaudio_uninit(ca);
 return 0;
}
