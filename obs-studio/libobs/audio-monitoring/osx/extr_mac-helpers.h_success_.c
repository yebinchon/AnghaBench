
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OSStatus ;


 int LOG_WARNING ;
 int blog (int ,char*,char const*,char const*,int) ;
 scalar_t__ noErr ;

__attribute__((used)) static bool success_(OSStatus stat, const char *func, const char *call)
{
 if (stat != noErr) {
  blog(LOG_WARNING, "%s: %s failed: %d", func, call, (int)stat);
  return 0;
 }

 return 1;
}
