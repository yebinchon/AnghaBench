
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SESSION_ID_PREFIX ;
 scalar_t__ memcmp_constant_time (int ,char const*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static inline bool
is_auth_token(const char *password)
{
    return (memcmp_constant_time(SESSION_ID_PREFIX, password,
                                 strlen(SESSION_ID_PREFIX)) == 0);
}
