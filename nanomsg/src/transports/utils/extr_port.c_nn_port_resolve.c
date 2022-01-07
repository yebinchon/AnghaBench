
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

int nn_port_resolve (const char *port, size_t portlen)
{
    int res;
    size_t i;

    res = 0;
    for (i = 0; i != portlen; ++i) {
        if (port [i] < '0' || port [i] > '9')
            return -EINVAL;
        res *= 10;
        res += port [i] - '0';
        if (res > 0xffff)
            return -EINVAL;
    }



    if (res == 0)
        return -EINVAL;

    return res;
}
