
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_process_pipe {int read_pipe; int * file; int member_0; } ;
typedef int pipe ;
typedef struct os_process_pipe os_process_pipe_t ;
typedef int FILE ;


 struct os_process_pipe* bmalloc (int) ;
 int * popen (char const*,char const*) ;

os_process_pipe_t *os_process_pipe_create(const char *cmd_line,
       const char *type)
{
 struct os_process_pipe pipe = {0};
 struct os_process_pipe *out;

 if (!cmd_line || !type) {
  return ((void*)0);
 }

 pipe.file = popen(cmd_line, type);
 pipe.read_pipe = *type == 'r';

 if (pipe.file == (FILE *)-1 || pipe.file == ((void*)0)) {
  return ((void*)0);
 }

 out = bmalloc(sizeof(pipe));
 *out = pipe;
 return out;
}
