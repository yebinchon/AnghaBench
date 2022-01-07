
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err_set_error_data_int (char*,scalar_t__,int,int) ;
 scalar_t__ strlen (char*) ;

void ERR_set_error_data(char *data, int flags)
{
    err_set_error_data_int(data, strlen(data) + 1, flags, 1);
}
