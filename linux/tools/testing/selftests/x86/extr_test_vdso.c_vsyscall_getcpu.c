
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAPS_LINE_LEN ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int printf (char*) ;
 int sscanf (char*,char*,void**,void**,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void *vsyscall_getcpu(void)
{

 FILE *maps;
 char line[MAPS_LINE_LEN];
 bool found = 0;

 maps = fopen("/proc/self/maps", "r");
 if (!maps)
  return ((void*)0);

 while (fgets(line, MAPS_LINE_LEN, maps)) {
  char r, x;
  void *start, *end;
  char name[MAPS_LINE_LEN];


  if (sscanf(line, "%p-%p %c-%cp %*x %*x:%*x %*u %s",
      &start, &end, &r, &x, name) != 5)
   continue;

  if (strcmp(name, "[vsyscall]"))
   continue;


  found = 1;
  break;
 }

 fclose(maps);

 if (!found) {
  printf("Warning: failed to find vsyscall getcpu\n");
  return ((void*)0);
 }
 return (void *) (0xffffffffff600800);



}
