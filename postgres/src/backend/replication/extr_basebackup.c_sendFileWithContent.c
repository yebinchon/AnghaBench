
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; int st_mtime; scalar_t__ st_gid; scalar_t__ st_uid; } ;


 int MemSet (char*,int ,int) ;
 int _tarWriteHeader (char const*,int *,struct stat*,int) ;
 scalar_t__ getegid () ;
 scalar_t__ geteuid () ;
 int pg_file_create_mode ;
 int pq_putmessage (char,char const*,int) ;
 int strlen (char const*) ;
 int time (int *) ;

__attribute__((used)) static void
sendFileWithContent(const char *filename, const char *content)
{
 struct stat statbuf;
 int pad,
    len;

 len = strlen(content);
 statbuf.st_uid = geteuid();
 statbuf.st_gid = getegid();

 statbuf.st_mtime = time(((void*)0));
 statbuf.st_mode = pg_file_create_mode;
 statbuf.st_size = len;

 _tarWriteHeader(filename, ((void*)0), &statbuf, 0);

 pq_putmessage('d', content, len);


 pad = ((len + 511) & ~511) - len;
 if (pad > 0)
 {
  char buf[512];

  MemSet(buf, 0, pad);
  pq_putmessage('d', buf, pad);
 }
}
