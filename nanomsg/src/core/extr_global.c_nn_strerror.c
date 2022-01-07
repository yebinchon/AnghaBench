
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* nn_err_strerror (int) ;

const char *nn_strerror (int errnum)
{
    return nn_err_strerror (errnum);
}
