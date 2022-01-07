
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;


 int O_RDONLY ;
 int PATH_MAX ;
 int atoi (char*) ;
 int close (int) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;

int read_debugfs_file(char *debugfs_file, int *result)
{
 int rc = -1, fd;
 char path[PATH_MAX];
 char value[16];

 strcpy(path, "/sys/kernel/debug/");
 strncat(path, debugfs_file, PATH_MAX - strlen(path) - 1);

 if ((fd = open(path, O_RDONLY)) < 0)
  return rc;

 if ((rc = read(fd, value, sizeof(value))) < 0)
  return rc;

 value[15] = 0;
 *result = atoi(value);
 close(fd);

 return 0;
}
