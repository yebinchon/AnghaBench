
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_error {scalar_t__ sys_err; int zip_err; } ;


 int ZIP_ER_OK ;

void
_zip_error_clear(struct zip_error *err)
{
    if (err == ((void*)0))
 return;

    err->zip_err = ZIP_ER_OK;
    err->sys_err = 0;
}
