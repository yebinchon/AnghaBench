
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_error {int * str; scalar_t__ sys_err; int zip_err; } ;


 int ZIP_ER_OK ;

void
_zip_error_init(struct zip_error *err)
{
    err->zip_err = ZIP_ER_OK;
    err->sys_err = 0;
    err->str = ((void*)0);
}
