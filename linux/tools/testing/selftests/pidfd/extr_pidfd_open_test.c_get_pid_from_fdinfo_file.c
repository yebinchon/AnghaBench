
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int path ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int safe_int (char*,int*) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 char* trim_whitespace_in_place (char*) ;

__attribute__((used)) static pid_t get_pid_from_fdinfo_file(int pidfd, const char *key, size_t keylen)
{
 int ret;
 char path[512];
 FILE *f;
 size_t n = 0;
 pid_t result = -1;
 char *line = ((void*)0);

 snprintf(path, sizeof(path), "/proc/self/fdinfo/%d", pidfd);

 f = fopen(path, "re");
 if (!f)
  return -1;

 while (getline(&line, &n, f) != -1) {
  char *numstr;

  if (strncmp(line, key, keylen))
   continue;

  numstr = trim_whitespace_in_place(line + 4);
  ret = safe_int(numstr, &result);
  if (ret < 0)
   goto out;

  break;
 }

out:
 free(line);
 fclose(f);
 return result;
}
