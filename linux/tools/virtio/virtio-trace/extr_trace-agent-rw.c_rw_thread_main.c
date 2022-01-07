
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_thread_info {scalar_t__ pipe_size; int cpu_num; int out_fd; int write_pipe; int read_pipe; int in_fd; } ;
typedef scalar_t__ ssize_t ;


 int EXIT_FAILURE ;
 int READ_WAIT_USEC ;
 int SPLICE_F_MORE ;
 int SPLICE_F_MOVE ;
 int bind_cpu (int ) ;
 int cond_wakeup ;
 int exit (int ) ;
 int global_run_operation ;
 scalar_t__ global_sig_receive ;
 int mutex_notify ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sleep (int) ;
 scalar_t__ splice (int ,int *,int ,int *,scalar_t__,int) ;
 int usleep (int ) ;

__attribute__((used)) static void *rw_thread_main(void *thread_info)
{
 ssize_t rlen, wlen;
 ssize_t ret;
 struct rw_thread_info *ts = (struct rw_thread_info *)thread_info;

 bind_cpu(ts->cpu_num);

 while (1) {

  if (!global_run_operation) {
   pthread_mutex_lock(&mutex_notify);
   pthread_cond_wait(&cond_wakeup, &mutex_notify);
   pthread_mutex_unlock(&mutex_notify);
  }

  if (global_sig_receive)
   break;





  rlen = splice(ts->in_fd, ((void*)0), ts->read_pipe, ((void*)0),
    ts->pipe_size, SPLICE_F_MOVE | SPLICE_F_MORE);

  if (rlen < 0) {
   pr_err("Splice_read in rw-thread(%d)\n", ts->cpu_num);
   goto error;
  } else if (rlen == 0) {






   usleep(READ_WAIT_USEC);
   pr_debug("Read retry(cpu:%d)\n", ts->cpu_num);
   continue;
  }

  wlen = 0;

  do {
   ret = splice(ts->write_pipe, ((void*)0), ts->out_fd, ((void*)0),
     rlen - wlen,
     SPLICE_F_MOVE | SPLICE_F_MORE);

   if (ret < 0) {
    pr_err("Splice_write in rw-thread(%d)\n",
        ts->cpu_num);
    goto error;
   } else if (ret == 0)
    sleep(1);
   wlen += ret;
  } while (wlen < rlen);
 }

 return ((void*)0);

error:
 exit(EXIT_FAILURE);
}
