
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {int device_name; } ;
typedef scalar_t__ OSStatus ;


 int LOG_WARNING ;
 int blog (int ,char*,char const*,int ,char const*,int) ;
 scalar_t__ noErr ;

__attribute__((used)) static inline bool ca_success(OSStatus stat, struct coreaudio_data *ca,
         const char *func, const char *action)
{
 if (stat != noErr) {
  blog(LOG_WARNING, "[%s]:[device '%s'] %s failed: %d", func,
       ca->device_name, action, (int)stat);
  return 0;
 }

 return 1;
}
