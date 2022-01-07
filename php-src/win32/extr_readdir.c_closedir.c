
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; struct TYPE_4__* dirw; } ;
typedef TYPE_1__ DIR ;


 int FindClose (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int free (TYPE_1__*) ;

int closedir(DIR *dp)
{
 if (!dp)
  return 0;


 if (dp->handle != INVALID_HANDLE_VALUE) {
  FindClose(dp->handle);
 }
 if (dp->dirw)
  free(dp->dirw);
 if (dp)
  free(dp);

 return 0;
}
