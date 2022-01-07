
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ d_reclen; scalar_t__ d_ino; } ;
struct TYPE_6__ {char* dirname; TYPE_1__ ret; int handle; } ;
typedef int DWORD ;
typedef TYPE_2__ DIR ;


 int ENOENT ;
 int ENOMEM ;
 int ENOTDIR ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributes (char const*) ;
 int INVALID_FILE_ATTRIBUTES ;
 int INVALID_HANDLE_VALUE ;
 int errno ;
 int free (TYPE_2__*) ;
 void* malloc (int) ;
 int strcat (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

DIR *
opendir(const char *dirname)
{
 DWORD attr;
 DIR *d;


 attr = GetFileAttributes(dirname);
 if (attr == INVALID_FILE_ATTRIBUTES)
 {
  errno = ENOENT;
  return ((void*)0);
 }
 if ((attr & FILE_ATTRIBUTE_DIRECTORY) != FILE_ATTRIBUTE_DIRECTORY)
 {
  errno = ENOTDIR;
  return ((void*)0);
 }

 d = malloc(sizeof(DIR));
 if (!d)
 {
  errno = ENOMEM;
  return ((void*)0);
 }
 d->dirname = malloc(strlen(dirname) + 4);
 if (!d->dirname)
 {
  errno = ENOMEM;
  free(d);
  return ((void*)0);
 }
 strcpy(d->dirname, dirname);
 if (d->dirname[strlen(d->dirname) - 1] != '/' &&
  d->dirname[strlen(d->dirname) - 1] != '\\')
  strcat(d->dirname, "\\");
 strcat(d->dirname, "*");
 d->handle = INVALID_HANDLE_VALUE;
 d->ret.d_ino = 0;
 d->ret.d_reclen = 0;

 return d;
}
