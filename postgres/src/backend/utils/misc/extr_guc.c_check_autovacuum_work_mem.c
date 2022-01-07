
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;



__attribute__((used)) static bool
check_autovacuum_work_mem(int *newval, void **extra, GucSource source)
{






 if (*newval == -1)
  return 1;






 if (*newval < 1024)
  *newval = 1024;

 return 1;
}
