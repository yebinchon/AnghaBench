
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {int child_sync; } ;
typedef scalar_t__ pid_t ;


 int IPC_CREAT ;
 int IPC_PRIVATE ;
 int IPC_RMID ;
 int TEST_FAIL ;
 int child (struct shared_info*) ;
 int destroy_child_sync (int *) ;
 scalar_t__ fork () ;
 int free (char*) ;
 int init_child_sync (int *) ;
 int parent (struct shared_info*,scalar_t__) ;
 int perror (char*) ;
 int setup_core_pattern (char**,int*) ;
 struct shared_info* shmat (int,int *,int ) ;
 int shmctl (int,int ,int *) ;
 int shmdt (struct shared_info*) ;
 int shmget (int ,int,int) ;
 int write_core_pattern (char*) ;

__attribute__((used)) static int core_pkey(void)
{
 char *core_pattern;
 bool changed_core_pattern;
 struct shared_info *info;
 int shm_id;
 int ret;
 pid_t pid;

 ret = setup_core_pattern(&core_pattern, &changed_core_pattern);
 if (ret)
  return ret;

 shm_id = shmget(IPC_PRIVATE, sizeof(*info), 0777 | IPC_CREAT);
 info = shmat(shm_id, ((void*)0), 0);

 ret = init_child_sync(&info->child_sync);
 if (ret)
  return ret;

 pid = fork();
 if (pid < 0) {
  perror("fork() failed");
  ret = TEST_FAIL;
 } else if (pid == 0)
  ret = child(info);
 else
  ret = parent(info, pid);

 shmdt(info);

 if (pid) {
  destroy_child_sync(&info->child_sync);
  shmctl(shm_id, IPC_RMID, ((void*)0));

  if (changed_core_pattern)
   write_core_pattern(core_pattern);
 }

 free(core_pattern);

 return ret;
}
