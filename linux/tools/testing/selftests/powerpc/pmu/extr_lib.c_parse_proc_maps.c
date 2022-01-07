
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long first; unsigned long last; } ;
struct TYPE_3__ {unsigned long first; unsigned long last; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,unsigned long*,unsigned long*,char*,char*) ;
 TYPE_2__ libc ;
 int perror (char*) ;
 scalar_t__ strstr (char*,char*) ;
 TYPE_1__ vdso ;

int parse_proc_maps(void)
{
 unsigned long start, end;
 char execute, name[128];
 FILE *f;
 int rc;

 f = fopen("/proc/self/maps", "r");
 if (!f) {
  perror("fopen");
  return -1;
 }

 do {

  rc = fscanf(f, "%lx-%lx %*c%*c%c%*c %*x %*d:%*d %*d %127s\n",
       &start, &end, &execute, name);
  if (rc <= 0)
   break;

  if (execute != 'x')
   continue;

  if (strstr(name, "libc")) {
   libc.first = start;
   libc.last = end - 1;
  } else if (strstr(name, "[vdso]")) {
   vdso.first = start;
   vdso.last = end - 1;
  }
 } while(1);

 fclose(f);

 return 0;
}
