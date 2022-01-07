
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tmp_line ;
typedef int time_t ;
struct tm {int tm_year; long tm_sec; int tm_isdst; int tm_mon; int tm_min; int tm_hour; int tm_mday; } ;
struct TYPE_8__ {int * path; } ;
typedef TYPE_2__ php_url ;
typedef int php_stream_wrapper ;
struct TYPE_7__ {int st_mode; int st_mtime; int st_atime; int st_ctime; int st_nlink; int st_rdev; int st_blksize; int st_blocks; int st_size; scalar_t__ st_gid; scalar_t__ st_uid; scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct TYPE_9__ {TYPE_1__ sb; } ;
typedef TYPE_3__ php_stream_statbuf ;
typedef int php_stream_context ;
typedef int php_stream ;


 int GET_FTP_RESULT (int *) ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 char* ZSTR_VAL (int *) ;
 int atoi (char*) ;
 int isdigit (char) ;
 int mktime (struct tm*) ;
 int * php_ftp_fopen_connect (int *,char const*,char*,int ,int *,int *,int *,TYPE_2__**,int *,int *) ;
 struct tm* php_gmtime_r (int*,struct tm*) ;
 int php_stream_close (int *) ;
 int php_stream_printf (int *,char*,char*) ;
 int php_stream_write_string (int *,char*) ;
 int php_url_free (TYPE_2__*) ;
 int sscanf (char*,char*,int*,int *,int *,int *,int *,long*) ;
 int time (int *) ;

__attribute__((used)) static int php_stream_ftp_url_stat(php_stream_wrapper *wrapper, const char *url, int flags, php_stream_statbuf *ssb, php_stream_context *context)
{
 php_stream *stream = ((void*)0);
 php_url *resource = ((void*)0);
 int result;
 char tmp_line[512];


 if (!ssb) return -1;

 stream = php_ftp_fopen_connect(wrapper, url, "r", 0, ((void*)0), context, ((void*)0), &resource, ((void*)0), ((void*)0));
 if (!stream) {
  goto stat_errexit;
 }

 ssb->sb.st_mode = 0644;
 php_stream_printf(stream, "CWD %s\r\n", (resource->path != ((void*)0) ? ZSTR_VAL(resource->path) : "/"));
 result = GET_FTP_RESULT(stream);
 if (result < 200 || result > 299) {
  ssb->sb.st_mode |= S_IFREG;
 } else {
  ssb->sb.st_mode |= S_IFDIR | S_IXUSR | S_IXGRP | S_IXOTH;
 }

 php_stream_write_string(stream, "TYPE I\r\n");

 result = GET_FTP_RESULT(stream);

 if(result < 200 || result > 299) {
  goto stat_errexit;
 }

 php_stream_printf(stream, "SIZE %s\r\n", (resource->path != ((void*)0) ? ZSTR_VAL(resource->path) : "/"));
 result = GET_FTP_RESULT(stream);
 if (result < 200 || result > 299) {



  if (ssb->sb.st_mode & S_IFDIR) {
   ssb->sb.st_size = 0;
  } else {
   goto stat_errexit;
  }
 } else {
  ssb->sb.st_size = atoi(tmp_line + 4);
 }

 php_stream_printf(stream, "MDTM %s\r\n", (resource->path != ((void*)0) ? ZSTR_VAL(resource->path) : "/"));
 result = GET_FTP_RESULT(stream);
 if (result == 213) {
  char *p = tmp_line + 4;
  int n;
  struct tm tm, tmbuf, *gmt;
  time_t stamp;

  while ((size_t)(p - tmp_line) < sizeof(tmp_line) && !isdigit(*p)) {
   p++;
  }

  if ((size_t)(p - tmp_line) > sizeof(tmp_line)) {
   goto mdtm_error;
  }

  n = sscanf(p, "%4u%2u%2u%2u%2u%2u", &tm.tm_year, &tm.tm_mon, &tm.tm_mday, &tm.tm_hour, &tm.tm_min, &tm.tm_sec);
  if (n != 6) {
   goto mdtm_error;
  }

  tm.tm_year -= 1900;
  tm.tm_mon--;
  tm.tm_isdst = -1;


  stamp = time(((void*)0));
  gmt = php_gmtime_r(&stamp, &tmbuf);
  if (!gmt) {
   goto mdtm_error;
  }
  gmt->tm_isdst = -1;


  tm.tm_sec += (long)(stamp - mktime(gmt));
  tm.tm_isdst = gmt->tm_isdst;

  ssb->sb.st_mtime = mktime(&tm);
 } else {

mdtm_error:
  ssb->sb.st_mtime = -1;
 }

 ssb->sb.st_ino = 0;
 ssb->sb.st_dev = 0;
 ssb->sb.st_uid = 0;
 ssb->sb.st_gid = 0;
 ssb->sb.st_atime = -1;
 ssb->sb.st_ctime = -1;

 ssb->sb.st_nlink = 1;
 ssb->sb.st_rdev = -1;






 php_stream_close(stream);
 php_url_free(resource);
 return 0;

stat_errexit:
 if (resource) {
  php_url_free(resource);
 }
 if (stream) {
  php_stream_close(stream);
 }
 return -1;
}
