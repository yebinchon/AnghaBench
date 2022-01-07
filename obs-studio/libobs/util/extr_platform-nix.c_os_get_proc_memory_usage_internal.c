
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirty_pages; int data; int library; int text; int share_pages; int resident_size; int virtual_size; } ;
typedef TYPE_1__ statm_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fscanf (int *,char*,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static inline bool os_get_proc_memory_usage_internal(statm_t *statm)
{
 const char *statm_path = "/proc/self/statm";

 FILE *f = fopen(statm_path, "r");
 if (!f)
  return 0;

 if (fscanf(f, "%lu %lu %lu %lu %lu %lu %lu", &statm->virtual_size,
     &statm->resident_size, &statm->share_pages, &statm->text,
     &statm->library, &statm->data, &statm->dirty_pages) != 7) {
  fclose(f);
  return 0;
 }

 fclose(f);
 return 1;
}
