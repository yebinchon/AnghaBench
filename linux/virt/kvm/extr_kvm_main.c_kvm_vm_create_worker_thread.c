
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kvm_vm_worker_thread_context {uintptr_t data; int err; int init_done; int thread_fn; int parent; struct kvm* kvm; } ;
struct kvm {int dummy; } ;
typedef int kvm_vm_thread_fn_t ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int WARN_ON (int ) ;
 int current ;
 int init_completion (int *) ;
 struct task_struct* kthread_run (int ,struct kvm_vm_worker_thread_context*,char*,char const*,int ) ;
 int kvm_vm_worker_thread ;
 int task_pid_nr (int ) ;
 int wait_for_completion (int *) ;

int kvm_vm_create_worker_thread(struct kvm *kvm, kvm_vm_thread_fn_t thread_fn,
    uintptr_t data, const char *name,
    struct task_struct **thread_ptr)
{
 struct kvm_vm_worker_thread_context init_context = {};
 struct task_struct *thread;

 *thread_ptr = ((void*)0);
 init_context.kvm = kvm;
 init_context.parent = current;
 init_context.thread_fn = thread_fn;
 init_context.data = data;
 init_completion(&init_context.init_done);

 thread = kthread_run(kvm_vm_worker_thread, &init_context,
        "%s-%d", name, task_pid_nr(current));
 if (IS_ERR(thread))
  return PTR_ERR(thread);


 WARN_ON(thread == ((void*)0));

 wait_for_completion(&init_context.init_done);

 if (!init_context.err)
  *thread_ptr = thread;

 return init_context.err;
}
