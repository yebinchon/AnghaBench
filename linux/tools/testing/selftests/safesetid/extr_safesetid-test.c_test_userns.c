
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int pid_t ;
typedef int map_file_name ;


 int CLONE_NEWUSER ;
 int EXIT_SUCCESS ;
 int SYS_clone ;
 int exit (int ) ;
 int getuid () ;
 int printf (char*) ;
 int sleep (int) ;
 scalar_t__ snprintf (char*,size_t,char*,int) ;
 int syscall (int ,int,int *) ;
 int write_file (char*,char*,int ) ;

__attribute__((used)) static bool test_userns(bool expect_success)
{
 uid_t uid;
 char map_file_name[32];
 size_t sz = sizeof(map_file_name);
 pid_t cpid;
 bool success;

 uid = getuid();

 int clone_flags = CLONE_NEWUSER;
 cpid = syscall(SYS_clone, clone_flags, ((void*)0));
 if (cpid == -1) {
     printf("clone failed");
     return 0;
 }

 if (cpid == 0) {

  sleep(1);
  exit(EXIT_SUCCESS);
 } else {
  if(snprintf(map_file_name, sz, "/proc/%d/uid_map", cpid) < 0) {
   printf("preparing file name string failed");
   return 0;
  }
  success = write_file(map_file_name, "0 0 1", uid);
  return success == expect_success;
 }

 printf("should not reach here");
 return 0;
}
