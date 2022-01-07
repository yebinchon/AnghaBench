
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int MODULE_MISSING_EXPORTS ;
 int blog (int ,char*,char const*,char const*) ;

__attribute__((used)) static inline int req_func_not_found(const char *name, const char *path)
{
 blog(LOG_DEBUG,
      "Required module function '%s' in module '%s' not "
      "found, loading of module failed",
      name, path);
 return MODULE_MISSING_EXPORTS;
}
