
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dirent {int d_name; int d_namlen; } ;
struct TYPE_6__ {int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
struct TYPE_7__ {struct dirent ret; int handle; int dirname; } ;
typedef TYPE_2__ DIR ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_NO_MORE_FILES ;
 int FindFirstFile (int ,TYPE_1__*) ;
 int FindNextFile (int ,TYPE_1__*) ;
 scalar_t__ GetLastError () ;
 int INVALID_HANDLE_VALUE ;
 int _dosmaperr (scalar_t__) ;
 scalar_t__ errno ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;

struct dirent *
readdir(DIR *d)
{
 WIN32_FIND_DATA fd;

 if (d->handle == INVALID_HANDLE_VALUE)
 {
  d->handle = FindFirstFile(d->dirname, &fd);
  if (d->handle == INVALID_HANDLE_VALUE)
  {

   if (GetLastError() == ERROR_FILE_NOT_FOUND)
    errno = 0;
   else
    _dosmaperr(GetLastError());
   return ((void*)0);
  }
 }
 else
 {
  if (!FindNextFile(d->handle, &fd))
  {

   if (GetLastError() == ERROR_NO_MORE_FILES)
    errno = 0;
   else
    _dosmaperr(GetLastError());
   return ((void*)0);
  }
 }
 strcpy(d->ret.d_name, fd.cFileName);
 d->ret.d_namlen = strlen(d->ret.d_name);

 return &d->ret;
}
