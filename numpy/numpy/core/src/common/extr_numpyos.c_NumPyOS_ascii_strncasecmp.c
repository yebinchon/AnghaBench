
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NumPyOS_ascii_tolower (char const) ;

__attribute__((used)) static int
NumPyOS_ascii_strncasecmp(const char* s1, const char* s2, size_t len)
{
    while (len > 0 && *s1 != '\0' && *s2 != '\0') {
        int diff = NumPyOS_ascii_tolower(*s1) - NumPyOS_ascii_tolower(*s2);
        if (diff != 0) {
            return diff;
        }
        ++s1;
        ++s2;
        --len;
    }
    if (len > 0) {
        return *s1 - *s2;
    }
    return 0;
}
