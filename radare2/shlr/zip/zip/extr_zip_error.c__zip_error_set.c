
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_error {int zip_err; int sys_err; } ;



void
_zip_error_set(struct zip_error *err, int ze, int se)
{
    if (err) {
 err->zip_err = ze;
 err->sys_err = se;
    }
}
