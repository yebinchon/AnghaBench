
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int blog (int ,char*,char const*,char const*) ;

__attribute__((used)) static inline bool gs_obj_valid(const void *obj, const char *f,
    const char *name)
{
 if (!obj) {
  blog(LOG_DEBUG, "%s: Null '%s' parameter", f, name);
  return 0;
 }

 return 1;
}
