
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PATH_MAX ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int core_pattern_file ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (char*,int,int ,int *) ;
 int free (char*) ;
 char* malloc (int ) ;
 int perror (char*) ;
 int strcmp (char*,char*) ;
 int write_core_pattern (char*) ;

__attribute__((used)) static int setup_core_pattern(char **core_pattern_, bool *changed_)
{
 FILE *f;
 char *core_pattern;
 int ret;

 core_pattern = malloc(PATH_MAX);
 if (!core_pattern) {
  perror("Error allocating memory");
  return TEST_FAIL;
 }

 f = fopen(core_pattern_file, "r");
 if (!f) {
  perror("Error opening core_pattern file");
  ret = TEST_FAIL;
  goto out;
 }

 ret = fread(core_pattern, 1, PATH_MAX, f);
 fclose(f);
 if (!ret) {
  perror("Error reading core_pattern file");
  ret = TEST_FAIL;
  goto out;
 }


 if (!strcmp(core_pattern, "core") || !strcmp(core_pattern, "core.%p"))
  *changed_ = 0;
 else {
  ret = write_core_pattern("core-pkey.%p");
  if (ret)
   goto out;

  *changed_ = 1;
 }

 *core_pattern_ = core_pattern;
 ret = TEST_PASS;

 out:
 if (ret)
  free(core_pattern);

 return ret;
}
