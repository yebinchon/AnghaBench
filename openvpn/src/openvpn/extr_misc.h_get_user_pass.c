
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_pass {int dummy; } ;


 int get_user_pass_cr (struct user_pass*,char const*,char const*,unsigned int const,int *) ;

__attribute__((used)) static inline bool
get_user_pass(struct user_pass *up,
              const char *auth_file,
              const char *prefix,
              const unsigned int flags)
{
    return get_user_pass_cr(up, auth_file, prefix, flags, ((void*)0));
}
