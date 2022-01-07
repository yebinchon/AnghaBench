
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAPS_LINE_LEN ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int printf (char*,...) ;
 int sscanf (char*,char*,void**,void**,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int vsyscall_map_r ;
 int vsyscall_map_x ;

__attribute__((used)) static int init_vsys(void)
{

 int nerrs = 0;
 FILE *maps;
 char line[MAPS_LINE_LEN];
 bool found = 0;

 maps = fopen("/proc/self/maps", "r");
 if (!maps) {
  printf("[WARN]\tCould not open /proc/self/maps -- assuming vsyscall is r-x\n");
  vsyscall_map_r = 1;
  return 0;
 }

 while (fgets(line, MAPS_LINE_LEN, maps)) {
  char r, x;
  void *start, *end;
  char name[MAPS_LINE_LEN];


  if (sscanf(line, "%p-%p %c-%cp %*x %*x:%*x %*u %s",
      &start, &end, &r, &x, name) != 5)
   continue;

  if (strcmp(name, "[vsyscall]"))
   continue;

  printf("\tvsyscall map: %s", line);

  if (start != (void *)0xffffffffff600000 ||
      end != (void *)0xffffffffff601000) {
   printf("[FAIL]\taddress range is nonsense\n");
   nerrs++;
  }

  printf("\tvsyscall permissions are %c-%c\n", r, x);
  vsyscall_map_r = (r == 'r');
  vsyscall_map_x = (x == 'x');

  found = 1;
  break;
 }

 fclose(maps);

 if (!found) {
  printf("\tno vsyscall map in /proc/self/maps\n");
  vsyscall_map_r = 0;
  vsyscall_map_x = 0;
 }

 return nerrs;



}
