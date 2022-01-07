
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *skip_current_directories(const char *cur)
{
    while (1)
    {
        if (cur[0] == '/' || cur[0] == '\\')
            ++cur;
        else if (cur[0] == '.' && (cur[1] == '/' || cur[1] == '\\'))
            cur += 2;
        else
            break;
    }

    return cur;
}
