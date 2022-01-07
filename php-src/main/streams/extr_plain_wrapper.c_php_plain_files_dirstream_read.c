
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dirent {int d_name; } ;
typedef int ssize_t ;
struct TYPE_4__ {int d_name; } ;
typedef TYPE_1__ php_stream_dirent ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
typedef int DIR ;


 int PHP_STRLCPY (int ,int ,int,int ) ;
 struct dirent* readdir (int *) ;
 int strlen (int ) ;

__attribute__((used)) static ssize_t php_plain_files_dirstream_read(php_stream *stream, char *buf, size_t count)
{
 DIR *dir = (DIR*)stream->abstract;
 struct dirent *result;
 php_stream_dirent *ent = (php_stream_dirent*)buf;


 if (count != sizeof(php_stream_dirent))
  return -1;

 result = readdir(dir);
 if (result) {
  PHP_STRLCPY(ent->d_name, result->d_name, sizeof(ent->d_name), strlen(result->d_name));
  return sizeof(php_stream_dirent);
 }
 return 0;
}
