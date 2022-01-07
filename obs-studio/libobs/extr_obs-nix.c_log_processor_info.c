
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; scalar_t__ len; } ;
typedef int FILE ;


 int LOG_INFO ;
 int atoi (char*) ;
 int blog (int ,char*,int ) ;
 int dstr_copy (struct dstr*,char*) ;
 int dstr_depad (struct dstr*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 int dstr_resize (struct dstr*,scalar_t__) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 char* strchr (char*,char) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void log_processor_info(void)
{
 int physical_id = -1;
 int last_physical_id = -1;
 char *line = ((void*)0);
 size_t linecap = 0;

 FILE *fp;
 struct dstr proc_name;
 struct dstr proc_speed;

 fp = fopen("/proc/cpuinfo", "r");
 if (!fp)
  return;

 dstr_init(&proc_name);
 dstr_init(&proc_speed);

 while (getline(&line, &linecap, fp) != -1) {
  if (!strncmp(line, "model name", 10)) {
   char *start = strchr(line, ':');
   if (!start || *(++start) == '\0')
    continue;

   dstr_copy(&proc_name, start);
   dstr_resize(&proc_name, proc_name.len - 1);
   dstr_depad(&proc_name);
  }

  if (!strncmp(line, "physical id", 11)) {
   char *start = strchr(line, ':');
   if (!start || *(++start) == '\0')
    continue;

   physical_id = atoi(start);
  }

  if (!strncmp(line, "cpu MHz", 7)) {
   char *start = strchr(line, ':');
   if (!start || *(++start) == '\0')
    continue;

   dstr_copy(&proc_speed, start);
   dstr_resize(&proc_speed, proc_speed.len - 1);
   dstr_depad(&proc_speed);
  }

  if (*line == '\n' && physical_id != last_physical_id) {
   last_physical_id = physical_id;
   blog(LOG_INFO, "CPU Name: %s", proc_name.array);
   blog(LOG_INFO, "CPU Speed: %sMHz", proc_speed.array);
  }
 }

 fclose(fp);
 dstr_free(&proc_name);
 dstr_free(&proc_speed);
 free(line);
}
