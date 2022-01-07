
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int blog (int ,char*,char const*) ;
 int thread_graphics ;

__attribute__((used)) static inline bool gs_valid(const char *f)
{
 if (!thread_graphics) {
  blog(LOG_DEBUG, "%s: called while not in a graphics context",
       f);
  return 0;
 }

 return 1;
}
