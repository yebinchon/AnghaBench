
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* file_name ;
 int test_anon ;
 int test_file ;
 int test_harness (int ,char*) ;

int main(int argc, char *argv[])
{
 int rc;

 rc = test_harness(test_anon, "subpage_prot_anon");
 if (rc)
  return rc;

 if (argc > 1)
  file_name = argv[1];
 else
  file_name = "tempfile";

 return test_harness(test_file, "subpage_prot_file");
}
