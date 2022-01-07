
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SKIP_IF_MSG (int,char*) ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int core_pattern_file ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 size_t fwrite (char const*,int,size_t,int *) ;
 int perror (char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int write_core_pattern(const char *core_pattern)
{
 size_t len = strlen(core_pattern), ret;
 FILE *f;

 f = fopen(core_pattern_file, "w");
 SKIP_IF_MSG(!f, "Try with root privileges");

 ret = fwrite(core_pattern, 1, len, f);
 fclose(f);
 if (ret != len) {
  perror("Error writing to core_pattern file");
  return TEST_FAIL;
 }

 return TEST_PASS;
}
