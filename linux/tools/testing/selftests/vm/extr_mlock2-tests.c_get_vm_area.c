
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_boundaries {unsigned long start; unsigned long end; } ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int memset (struct vm_boundaries*,int ,int) ;
 int perror (char*) ;
 int printf (char*) ;
 int sscanf (char*,char*,unsigned long*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int get_vm_area(unsigned long addr, struct vm_boundaries *area)
{
 FILE *file;
 int ret = 1;
 char line[1024] = {0};
 char *end_addr;
 char *stop;
 unsigned long start;
 unsigned long end;

 if (!area)
  return ret;

 file = fopen("/proc/self/maps", "r");
 if (!file) {
  perror("fopen");
  return ret;
 }

 memset(area, 0, sizeof(struct vm_boundaries));

 while(fgets(line, 1024, file)) {
  end_addr = strchr(line, '-');
  if (!end_addr) {
   printf("cannot parse /proc/self/maps\n");
   goto out;
  }
  *end_addr = '\0';
  end_addr++;
  stop = strchr(end_addr, ' ');
  if (!stop) {
   printf("cannot parse /proc/self/maps\n");
   goto out;
  }
  stop = '\0';

  sscanf(line, "%lx", &start);
  sscanf(end_addr, "%lx", &end);

  if (start <= addr && end > addr) {
   area->start = start;
   area->end = end;
   ret = 0;
   goto out;
  }
 }
out:
 fclose(file);
 return ret;
}
