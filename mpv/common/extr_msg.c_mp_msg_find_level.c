
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* mp_log_levels ;
 int strcmp (char const*,scalar_t__) ;

int mp_msg_find_level(const char *s)
{
    for (int n = 0; n < MP_ARRAY_SIZE(mp_log_levels); n++) {
        if (mp_log_levels[n] && !strcmp(s, mp_log_levels[n]))
            return n;
    }
    return -1;
}
