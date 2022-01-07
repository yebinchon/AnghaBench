
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_ARRAY_SIZE (char**) ;
 char** err_table ;

const char *mpv_error_string(int error)
{
    error = -error;
    if (error < 0)
        error = 0;
    const char *name = ((void*)0);
    if (error < MP_ARRAY_SIZE(err_table))
        name = err_table[error];
    return name ? name : "unknown error";
}
