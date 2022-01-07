
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_preprocessor {int sys_include_dirs; } ;


 int bstrdup (char const*) ;
 int da_push_back (int ,int ) ;

__attribute__((used)) static inline void
cf_preprocessor_add_sys_include_dir(struct cf_preprocessor *pp,
        const char *include_dir)
{
 if (include_dir)
  da_push_back(pp->sys_include_dirs, bstrdup(include_dir));
}
