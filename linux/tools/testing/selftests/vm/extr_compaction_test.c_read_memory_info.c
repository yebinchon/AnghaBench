
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int FILE ;


 unsigned long atoll (char*) ;
 int fgets (char*,int,int *) ;
 int pclose (int *) ;
 int perror (char*) ;
 int * popen (char*,char*) ;

int read_memory_info(unsigned long *memfree, unsigned long *hugepagesize)
{
 char buffer[256] = {0};
 char *cmd = "cat /proc/meminfo | grep -i memfree | grep -o '[0-9]*'";
 FILE *cmdfile = popen(cmd, "r");

 if (!(fgets(buffer, sizeof(buffer), cmdfile))) {
  perror("Failed to read meminfo\n");
  return -1;
 }

 pclose(cmdfile);

 *memfree = atoll(buffer);
 cmd = "cat /proc/meminfo | grep -i hugepagesize | grep -o '[0-9]*'";
 cmdfile = popen(cmd, "r");

 if (!(fgets(buffer, sizeof(buffer), cmdfile))) {
  perror("Failed to read meminfo\n");
  return -1;
 }

 pclose(cmdfile);
 *hugepagesize = atoll(buffer);

 return 0;
}
