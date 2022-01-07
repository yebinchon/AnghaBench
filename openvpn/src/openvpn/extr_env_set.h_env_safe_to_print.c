
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_password_env_var (char const*) ;

__attribute__((used)) static inline bool
env_safe_to_print(const char *str)
{

    if (is_password_env_var(str))
    {
        return 0;
    }

    return 1;
}
