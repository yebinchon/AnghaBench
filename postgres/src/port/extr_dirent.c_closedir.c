
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; struct TYPE_4__* dirname; } ;
typedef TYPE_1__ DIR ;


 int FindClose (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int free (TYPE_1__*) ;

int
closedir(DIR *d)
{
 int ret = 0;

 if (d->handle != INVALID_HANDLE_VALUE)
  ret = !FindClose(d->handle);
 free(d->dirname);
 free(d);

 return ret;
}
