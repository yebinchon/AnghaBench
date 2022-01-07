
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zlog_stream {unsigned int is_stdout; int child_pid; } ;
struct fpm_event_s {int fd; } ;
struct fpm_child_s {int fd_stdout; int fd_stderr; scalar_t__ pid; TYPE_2__* wp; struct zlog_stream* log_stream; struct fpm_event_s ev_stderr; struct fpm_event_s ev_stdout; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int name; int decorate_workers_output; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int STDERR_FILENO ;
 int STREAM_SET_MSG_PREFIX_FMT ;
 int ZLOG_SYSERROR ;
 int ZLOG_TRUE ;
 int ZLOG_WARNING ;
 int close (int) ;
 scalar_t__ errno ;
 int fpm_event_del (struct fpm_event_s*) ;
 struct zlog_stream* malloc (int) ;
 char* memchr (char*,char,int) ;
 int memmove (char*,char*,int) ;
 int read (int,char*,int const) ;
 int zlog (int ,char*) ;
 int zlog_stream_finish (struct zlog_stream*) ;
 int zlog_stream_init_ex (struct zlog_stream*,int ,int ) ;
 int zlog_stream_set_child_pid (struct zlog_stream*,int) ;
 int zlog_stream_set_decorating (struct zlog_stream*,int ) ;
 int zlog_stream_set_is_stdout (struct zlog_stream*,int) ;
 int zlog_stream_set_msg_prefix (struct zlog_stream*,int ,int ,int,char*) ;
 int zlog_stream_set_msg_quoting (struct zlog_stream*,int ) ;
 int zlog_stream_set_msg_suffix (struct zlog_stream*,int *,char*) ;
 int zlog_stream_set_wrapping (struct zlog_stream*,int ) ;
 int zlog_stream_str (struct zlog_stream*,char*,int) ;

__attribute__((used)) static void fpm_stdio_child_said(struct fpm_event_s *ev, short which, void *arg)
{
 static const int max_buf_size = 1024;
 int fd = ev->fd;
 char buf[max_buf_size];
 struct fpm_child_s *child;
 int is_stdout;
 struct fpm_event_s *event;
 int fifo_in = 1, fifo_out = 1;
 int in_buf = 0;
 int read_fail = 0, finish_log_stream = 0, create_log_stream;
 int res;
 struct zlog_stream *log_stream;

 if (!arg) {
  return;
 }
 child = (struct fpm_child_s *)arg;

 is_stdout = (fd == child->fd_stdout);
 if (is_stdout) {
  event = &child->ev_stdout;
 } else {
  event = &child->ev_stderr;
 }

 create_log_stream = !child->log_stream;
 if (create_log_stream) {
  log_stream = child->log_stream = malloc(sizeof(struct zlog_stream));
  zlog_stream_init_ex(log_stream, ZLOG_WARNING, STDERR_FILENO);
  zlog_stream_set_decorating(log_stream, child->wp->config->decorate_workers_output);
  zlog_stream_set_wrapping(log_stream, ZLOG_TRUE);
  zlog_stream_set_msg_prefix(log_stream, STREAM_SET_MSG_PREFIX_FMT,
    child->wp->config->name, (int) child->pid, is_stdout ? "stdout" : "stderr");
  zlog_stream_set_msg_quoting(log_stream, ZLOG_TRUE);
  zlog_stream_set_is_stdout(log_stream, is_stdout);
  zlog_stream_set_child_pid(log_stream, (int)child->pid);
 } else {
  log_stream = child->log_stream;


  if (log_stream->is_stdout != (unsigned int)is_stdout || log_stream->child_pid != (int)child->pid) {
   zlog_stream_finish(log_stream);
   zlog_stream_set_msg_prefix(log_stream, STREAM_SET_MSG_PREFIX_FMT,
     child->wp->config->name, (int) child->pid, is_stdout ? "stdout" : "stderr");
   zlog_stream_set_is_stdout(log_stream, is_stdout);
   zlog_stream_set_child_pid(log_stream, (int)child->pid);
  }
 }

 while (fifo_in || fifo_out) {
  if (fifo_in) {
   res = read(fd, buf + in_buf, max_buf_size - 1 - in_buf);
   if (res <= 0) {
    fifo_in = 0;
    if (res == 0 || (errno != EAGAIN && errno != EWOULDBLOCK)) {

     read_fail = (res < 0) ? res : 1;
    }
   } else {
    in_buf += res;

    if (!buf[in_buf - 1]) {
     finish_log_stream = 1;
     in_buf--;
    }
   }
  }

  if (fifo_out) {
   if (in_buf == 0) {
    fifo_out = 0;
   } else {
    char *nl;

    nl = memchr(buf, '\n', in_buf);
    if (nl) {

     int out_len = nl - buf;
     zlog_stream_str(log_stream, buf, out_len);
     zlog_stream_finish(log_stream);

     out_len++;

     memmove(buf, buf + out_len, in_buf - out_len);
     in_buf -= out_len;
    } else if (in_buf == max_buf_size - 1 || !fifo_in) {

     zlog_stream_str(log_stream, buf, in_buf);
     in_buf = 0;
    }
   }
  }
 }

 if (read_fail) {
  if (create_log_stream) {
   zlog_stream_set_msg_suffix(log_stream, ((void*)0), ", pipe is closed");
   zlog_stream_finish(log_stream);
  }
  if (read_fail < 0) {
   zlog(ZLOG_SYSERROR, "unable to read what child say");
  }

  fpm_event_del(event);

  if (is_stdout) {
   close(child->fd_stdout);
   child->fd_stdout = -1;
  } else {
   close(child->fd_stderr);
   child->fd_stderr = -1;
  }
 } else if (finish_log_stream) {
  zlog_stream_finish(log_stream);
 }
}
