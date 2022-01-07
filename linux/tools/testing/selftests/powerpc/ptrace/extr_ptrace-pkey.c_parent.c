
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {unsigned long amr1; unsigned long amr2; unsigned long amr3; unsigned long expected_iamr; unsigned long new_iamr; unsigned long expected_uamor; unsigned long new_uamor; int child_sync; } ;
typedef int pid_t ;


 int NT_PPC_PKEY ;
 int PARENT_FAIL_IF (int,int *) ;
 int PARENT_SKIP_IF_UNSUPPORTED (int,int *) ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int printf (char*,...) ;
 int prod_child (int *) ;
 int ptrace_read_regs (int,int ,unsigned long*,int) ;
 char* ptrace_read_running ;
 int ptrace_write_regs (int,int ,unsigned long*,int) ;
 char* ptrace_write_running ;
 int wait (int*) ;
 int wait_child (int *) ;

__attribute__((used)) static int parent(struct shared_info *info, pid_t pid)
{
 unsigned long regs[3];
 int ret, status;





 ret = ptrace_read_regs(pid, NT_PPC_PKEY, regs, 3);
 PARENT_SKIP_IF_UNSUPPORTED(ret, &info->child_sync);
 PARENT_FAIL_IF(ret, &info->child_sync);

 info->amr1 = info->amr2 = info->amr3 = regs[0];
 info->expected_iamr = info->new_iamr = regs[1];
 info->expected_uamor = info->new_uamor = regs[2];


 ret = prod_child(&info->child_sync);
 PARENT_FAIL_IF(ret, &info->child_sync);

 ret = wait_child(&info->child_sync);
 if (ret)
  return ret;


 ret = ptrace_read_regs(pid, NT_PPC_PKEY, regs, 3);
 PARENT_FAIL_IF(ret, &info->child_sync);

 printf("%-30s AMR: %016lx IAMR: %016lx UAMOR: %016lx\n",
        ptrace_read_running, regs[0], regs[1], regs[2]);

 PARENT_FAIL_IF(regs[0] != info->amr1, &info->child_sync);
 PARENT_FAIL_IF(regs[1] != info->expected_iamr, &info->child_sync);
 PARENT_FAIL_IF(regs[2] != info->expected_uamor, &info->child_sync);


 ret = ptrace_write_regs(pid, NT_PPC_PKEY, &info->amr2, 1);
 PARENT_FAIL_IF(ret, &info->child_sync);

 printf("%-30s AMR: %016lx\n", ptrace_write_running, info->amr2);


 ret = prod_child(&info->child_sync);
 PARENT_FAIL_IF(ret, &info->child_sync);

 ret = wait_child(&info->child_sync);
 if (ret)
  return ret;


 ret = ptrace_write_regs(pid, NT_PPC_PKEY, &info->amr3, 1);
 PARENT_FAIL_IF(ret, &info->child_sync);

 printf("%-30s AMR: %016lx\n", ptrace_write_running, info->amr3);


 ret = prod_child(&info->child_sync);
 PARENT_FAIL_IF(ret, &info->child_sync);

 ret = wait_child(&info->child_sync);
 if (ret)
  return ret;


 regs[0] = info->amr1;
 regs[1] = info->new_iamr;
 ret = ptrace_write_regs(pid, NT_PPC_PKEY, regs, 2);
 PARENT_FAIL_IF(!ret, &info->child_sync);

 printf("%-30s AMR: %016lx IAMR: %016lx\n",
        ptrace_write_running, regs[0], regs[1]);


 regs[2] = info->new_uamor;
 ret = ptrace_write_regs(pid, NT_PPC_PKEY, regs, 3);
 PARENT_FAIL_IF(!ret, &info->child_sync);

 printf("%-30s AMR: %016lx IAMR: %016lx UAMOR: %016lx\n",
        ptrace_write_running, regs[0], regs[1], regs[2]);


 ret = ptrace_read_regs(pid, NT_PPC_PKEY, regs, 3);
 PARENT_FAIL_IF(ret, &info->child_sync);

 printf("%-30s AMR: %016lx IAMR: %016lx UAMOR: %016lx\n",
        ptrace_read_running, regs[0], regs[1], regs[2]);

 PARENT_FAIL_IF(regs[0] != info->amr2, &info->child_sync);
 PARENT_FAIL_IF(regs[1] != info->expected_iamr, &info->child_sync);
 PARENT_FAIL_IF(regs[2] != info->expected_uamor, &info->child_sync);


 ret = prod_child(&info->child_sync);
 PARENT_FAIL_IF(ret, &info->child_sync);

 ret = wait(&status);
 if (ret != pid) {
  printf("Child's exit status not captured\n");
  ret = TEST_PASS;
 } else if (!WIFEXITED(status)) {
  printf("Child exited abnormally\n");
  ret = TEST_FAIL;
 } else
  ret = WEXITSTATUS(status) ? TEST_FAIL : TEST_PASS;

 return ret;
}
