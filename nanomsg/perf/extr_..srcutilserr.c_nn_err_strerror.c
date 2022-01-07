
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* strerror (int) ;

const char *nn_err_strerror (int errnum)
{
    switch (errnum) {
    case 129:
        return "Nanomsg library was terminated";
    case 146:
        return "Operation cannot be performed in this state";
    default:




        return strerror (errnum);



    }
}
