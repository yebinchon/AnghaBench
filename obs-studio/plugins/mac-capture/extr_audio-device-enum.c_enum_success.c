
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OSStatus ;


 int LOG_WARNING ;
 int blog (int ,char*,char const*,int) ;
 scalar_t__ noErr ;

__attribute__((used)) static inline bool enum_success(OSStatus stat, const char *msg)
{
 if (stat != noErr) {
  blog(LOG_WARNING, "[coreaudio_enum_devices] %s failed: %d", msg,
       (int)stat);
  return 0;
 }

 return 1;
}
