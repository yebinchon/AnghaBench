
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int MAXPGPATH ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ errno ;
 int open (char*,int ,int ) ;
 int pg_fatal (char*,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int strerror (scalar_t__) ;

bool
pid_lock_file_exists(const char *datadir)
{
 char path[MAXPGPATH];
 int fd;

 snprintf(path, sizeof(path), "%s/postmaster.pid", datadir);

 if ((fd = open(path, O_RDONLY, 0)) < 0)
 {

  if (errno != ENOENT && errno != ENOTDIR)
   pg_fatal("could not open file \"%s\" for reading: %s\n",
      path, strerror(errno));

  return 0;
 }

 close(fd);
 return 1;
}
