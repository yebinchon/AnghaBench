
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errno_t ;


 int EINVAL ;
 int ERANGE ;

errno_t strcpy_s(char *dst, size_t sizeof_dst, const char *src)
{
    size_t i;

    if (sizeof_dst == 0)
        return ERANGE;

    if (dst == ((void*)0))
        return EINVAL;

    if (src == ((void*)0)) {
        dst[0] = 0;
        return EINVAL;
    }

    for (i=0; src[i]; i++) {
        if (i >= sizeof_dst) {
            dst[0] = 0;
            return ERANGE;
        } else
            dst[i] = src[i];
    }
    if (i >= sizeof_dst) {
        dst[0] = 0;
        return ERANGE;
    } else
        dst[i] = src[i];

    return 0;
}
