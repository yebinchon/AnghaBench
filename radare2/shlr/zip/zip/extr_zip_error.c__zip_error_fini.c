
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_error {int * str; } ;


 int free (int *) ;

void
_zip_error_fini(struct zip_error *err)
{
    free(err->str);
    err->str = ((void*)0);
}
