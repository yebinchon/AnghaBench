
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; } ;
typedef int FILE ;


 int _SC_NPROCESSORS_ONLN ;
 int atoi (char*) ;
 int bfree (char*) ;
 int core_count_initialized ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_cat_dstr (struct dstr*,struct dstr*) ;
 int dstr_catf (struct dstr*,char*,int) ;
 int dstr_find (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 scalar_t__ dstr_is_empty (struct dstr*) ;
 int dstr_ncopy (struct dstr*,char*,size_t) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int logical_cores ;
 char* os_quick_read_utf8_file (char*) ;
 int physical_cores ;
 char* strchr (char*,char) ;
 size_t strcspn (char*,char*) ;
 int strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int sysconf (int ) ;

__attribute__((used)) static void os_get_cores_internal(void)
{
 if (core_count_initialized)
  return;

 core_count_initialized = 1;

 logical_cores = sysconf(_SC_NPROCESSORS_ONLN);


 int physical_id = -1;
 int last_physical_id = -1;
 int core_count = 0;
 char *line = ((void*)0);
 size_t linecap = 0;

 FILE *fp;
 struct dstr proc_phys_id;
 struct dstr proc_phys_ids;

 fp = fopen("/proc/cpuinfo", "r");
 if (!fp)
  return;

 dstr_init(&proc_phys_id);
 dstr_init(&proc_phys_ids);

 while (getline(&line, &linecap, fp) != -1) {
  if (!strncmp(line, "physical id", 11)) {
   char *start = strchr(line, ':');
   if (!start || *(++start) == '\0')
    continue;

   physical_id = atoi(start);
   dstr_free(&proc_phys_id);
   dstr_init(&proc_phys_id);
   dstr_catf(&proc_phys_id, "%d", physical_id);
  }

  if (!strncmp(line, "cpu cores", 9)) {
   char *start = strchr(line, ':');
   if (!start || *(++start) == '\0')
    continue;

   if (dstr_is_empty(&proc_phys_ids) ||
       (!dstr_is_empty(&proc_phys_ids) &&
        !dstr_find(&proc_phys_ids, proc_phys_id.array))) {
    dstr_cat_dstr(&proc_phys_ids, &proc_phys_id);
    dstr_cat(&proc_phys_ids, " ");
    core_count += atoi(start);
   }
  }

  if (*line == '\n' && physical_id != last_physical_id) {
   last_physical_id = physical_id;
  }
 }

 if (core_count == 0)
  physical_cores = logical_cores;
 else
  physical_cores = core_count;

 fclose(fp);
 dstr_free(&proc_phys_ids);
 dstr_free(&proc_phys_id);
 free(line);
}
