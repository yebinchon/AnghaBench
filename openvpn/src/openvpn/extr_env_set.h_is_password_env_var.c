
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static inline bool
is_password_env_var(const char *str)
{
    return (strncmp(str, "password", 8) == 0);
}
