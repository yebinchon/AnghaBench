
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dirent {unsigned short d_reclen; int d_ino; scalar_t__ d_off; int d_name; } ;
struct TYPE_5__ {int cFileName; } ;
struct TYPE_4__ {int finished; scalar_t__ offset; struct dirent dent; TYPE_3__ fileinfo; int handle; } ;
typedef TYPE_1__ DIR ;


 scalar_t__ FindNextFileW (int ,TYPE_3__*) ;
 int PHP_WIN32_CP_IGNORE_LEN ;
 int free (char*) ;
 int memmove (int ,char*,size_t) ;
 char* php_win32_cp_conv_w_to_any (int ,int ,size_t*) ;

struct dirent *readdir(DIR *dp)
{
 char *_tmp;
 size_t reclen;

 if (!dp || dp->finished)
  return ((void*)0);

 if (dp->offset != 0) {
  if (FindNextFileW(dp->handle, &(dp->fileinfo)) == 0) {
   dp->finished = 1;
   return ((void*)0);
  }
 }

 _tmp = php_win32_cp_conv_w_to_any(dp->fileinfo.cFileName, PHP_WIN32_CP_IGNORE_LEN, &reclen);
 if (!_tmp) {

  return ((void*)0);
 }
 memmove(dp->dent.d_name, _tmp, reclen + 1);
 free(_tmp);
 dp->dent.d_reclen = (unsigned short)reclen;

 dp->offset++;

 dp->dent.d_ino = 1;
 dp->dent.d_off = dp->offset;

 return &(dp->dent);
}
