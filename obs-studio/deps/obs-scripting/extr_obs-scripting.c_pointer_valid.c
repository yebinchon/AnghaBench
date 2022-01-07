
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_WARNING ;
 int blog (int ,char*,char const*,char const*) ;

__attribute__((used)) static inline bool pointer_valid(const void *x, const char *name,
     const char *func)
{
 if (!x) {
  blog(LOG_WARNING, "obs-scripting: [%s] %s is null", func, name);
  return 0;
 }

 return 1;
}
