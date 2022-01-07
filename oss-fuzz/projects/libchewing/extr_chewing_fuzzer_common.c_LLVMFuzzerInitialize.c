
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dirname (char*) ;
 int free (char*) ;
 int mktemp (char*) ;
 int setenv (char*,char*,int ) ;
 char* strdup (char*) ;
 char* userphrase_path ;

int LLVMFuzzerInitialize(int* argc, char*** argv) {
  char* exe_path = (*argv)[0];


  char* exe_path_copy = strdup(exe_path);
  char* dir = dirname(exe_path_copy);


  setenv("CHEWING_PATH", dir, 0);
  free(exe_path_copy);



  mktemp(userphrase_path);
  setenv("TEST_USERPHRASE_PATH", userphrase_path, 0);
  return 0;
}
