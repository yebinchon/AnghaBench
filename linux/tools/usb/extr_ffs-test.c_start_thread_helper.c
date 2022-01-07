
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {char* filename; char* in_name; char* out_name; scalar_t__ (* in ) (struct thread*,int ,int ) ;scalar_t__ (* out ) (struct thread*,int ,scalar_t__) ;scalar_t__ status; int buf; int buf_size; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int cleanup_thread ;
 int debug (char*,char const*,char const*) ;
 scalar_t__ errno ;
 int info (char*,char*) ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,void*) ;
 int pthread_testcancel () ;
 scalar_t__ stub1 (struct thread*,int ,int ) ;
 scalar_t__ stub2 (struct thread*,int ,scalar_t__) ;
 int warn (char*,char const*,char const*) ;

__attribute__((used)) static void *start_thread_helper(void *arg)
{
 const char *name, *op, *in_name, *out_name;
 struct thread *t = arg;
 ssize_t ret;

 info("%s: starts\n", t->filename);
 in_name = t->in_name ? t->in_name : t->filename;
 out_name = t->out_name ? t->out_name : t->filename;

 pthread_cleanup_push(cleanup_thread, arg);

 for (;;) {
  pthread_testcancel();

  ret = t->in(t, t->buf, t->buf_size);
  if (ret > 0) {
   ret = t->out(t, t->buf, ret);
   name = out_name;
   op = "write";
  } else {
   name = in_name;
   op = "read";
  }

  if (ret > 0) {

  } else if (!ret) {
   debug("%s: %s: EOF", name, op);
   break;
  } else if (errno == EINTR || errno == EAGAIN) {
   debug("%s: %s", name, op);
  } else {
   warn("%s: %s", name, op);
   break;
  }
 }

 pthread_cleanup_pop(1);

 t->status = ret;
 info("%s: ends\n", t->filename);
 return ((void*)0);
}
