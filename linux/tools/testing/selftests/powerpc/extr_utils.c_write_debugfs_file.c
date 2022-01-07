
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_WRONLY ;
 int PATH_MAX ;
 int close (int) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;
 int write (int,char*,int) ;

int write_debugfs_file(char *debugfs_file, int result)
{
 int rc = -1, fd;
 char path[PATH_MAX];
 char value[16];

 strcpy(path, "/sys/kernel/debug/");
 strncat(path, debugfs_file, PATH_MAX - strlen(path) - 1);

 if ((fd = open(path, O_WRONLY)) < 0)
  return rc;

 snprintf(value, 16, "%d", result);

 if ((rc = write(fd, value, strlen(value))) < 0)
  return rc;

 close(fd);

 return 0;
}
