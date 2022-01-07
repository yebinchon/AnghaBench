
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {unsigned long amr; unsigned long iamr; unsigned long uamor; int child_sync; } ;
typedef int pid_t ;
typedef int off_t ;


 int MAP_PRIVATE ;
 int NT_PPC_PKEY ;
 int O_RDONLY ;
 int PARENT_FAIL_IF (int,int *) ;
 int PARENT_SKIP_IF_UNSUPPORTED (int,int *) ;
 int PATH_MAX ;
 int PROT_READ ;
 int TEST_FAIL ;
 int WCOREDUMP (int) ;
 int WIFSIGNALED (int) ;
 int check_core_file (struct shared_info*,void*,int) ;
 int close (int) ;
 int free (char*) ;
 char* malloc (int) ;
 void* mmap (int *,int,int ,int ,int,int ) ;
 int munmap (void*,int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*) ;
 int prod_child (int *) ;
 int ptrace_read_regs (int,int ,unsigned long*,int) ;
 int snprintf (char*,int,char*,int) ;
 int try_core_file (char*,struct shared_info*,int) ;
 int unlink (char*) ;
 int wait (int*) ;

__attribute__((used)) static int parent(struct shared_info *info, pid_t pid)
{
 char *filenames, *filename[3];
 int fd, i, ret, status;
 unsigned long regs[3];
 off_t core_size;
 void *core;





 ret = ptrace_read_regs(pid, NT_PPC_PKEY, regs, 3);
 PARENT_SKIP_IF_UNSUPPORTED(ret, &info->child_sync);
 PARENT_FAIL_IF(ret, &info->child_sync);

 info->amr = regs[0];
 info->iamr = regs[1];
 info->uamor = regs[2];


 ret = prod_child(&info->child_sync);
 PARENT_FAIL_IF(ret, &info->child_sync);

 ret = wait(&status);
 if (ret != pid) {
  printf("Child's exit status not captured\n");
  return TEST_FAIL;
 } else if (!WIFSIGNALED(status) || !WCOREDUMP(status)) {
  printf("Child didn't dump core\n");
  return TEST_FAIL;
 }



 filename[0] = filenames = malloc(PATH_MAX);
 if (!filenames) {
  perror("Error allocating memory");
  return TEST_FAIL;
 }

 ret = snprintf(filename[0], PATH_MAX, "core-pkey.%d", pid);
 if (ret < 0 || ret >= PATH_MAX) {
  ret = TEST_FAIL;
  goto out;
 }

 filename[1] = filename[0] + ret + 1;
 ret = snprintf(filename[1], PATH_MAX - ret - 1, "core.%d", pid);
 if (ret < 0 || ret >= PATH_MAX - ret - 1) {
  ret = TEST_FAIL;
  goto out;
 }
 filename[2] = "core";

 for (i = 0; i < 3; i++) {
  core_size = try_core_file(filename[i], info, pid);
  if (core_size != TEST_FAIL)
   break;
 }

 if (i == 3) {
  printf("Couldn't find core file\n");
  ret = TEST_FAIL;
  goto out;
 }

 fd = open(filename[i], O_RDONLY);
 if (fd == -1) {
  perror("Error opening core file");
  ret = TEST_FAIL;
  goto out;
 }

 core = mmap(((void*)0), core_size, PROT_READ, MAP_PRIVATE, fd, 0);
 if (core == (void *) -1) {
  perror("Error mmaping core file");
  ret = TEST_FAIL;
  goto out;
 }

 ret = check_core_file(info, core, core_size);

 munmap(core, core_size);
 close(fd);
 unlink(filename[i]);

 out:
 free(filenames);

 return ret;
}
