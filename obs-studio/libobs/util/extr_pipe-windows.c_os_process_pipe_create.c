
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int read_pipe; int * handle_err; int * process; int * handle; } ;
typedef TYPE_1__ os_process_pipe_t ;
typedef int * HANDLE ;


 int CloseHandle (int *) ;
 int HANDLE_FLAG_INHERIT ;
 int SetHandleInformation (int *,int ,int) ;
 TYPE_1__* bmalloc (int) ;
 int create_pipe (int **,int **) ;
 int create_process (char const*,int *,int *,int *,int **) ;

os_process_pipe_t *os_process_pipe_create(const char *cmd_line,
       const char *type)
{
 os_process_pipe_t *pp = ((void*)0);
 bool read_pipe;
 HANDLE process;
 HANDLE output;
 HANDLE err_input, err_output;
 HANDLE input;
 bool success;

 if (!cmd_line || !type) {
  return ((void*)0);
 }
 if (*type != 'r' && *type != 'w') {
  return ((void*)0);
 }
 if (!create_pipe(&input, &output)) {
  return ((void*)0);
 }

 if (!create_pipe(&err_input, &err_output)) {
  return ((void*)0);
 }

 read_pipe = *type == 'r';

 success = !!SetHandleInformation(read_pipe ? input : output,
      HANDLE_FLAG_INHERIT, 0);
 if (!success) {
  goto error;
 }

 success = !!SetHandleInformation(err_input, HANDLE_FLAG_INHERIT, 0);
 if (!success) {
  goto error;
 }

 success = create_process(cmd_line, read_pipe ? ((void*)0) : input,
     read_pipe ? output : ((void*)0), err_output,
     &process);
 if (!success) {
  goto error;
 }

 pp = bmalloc(sizeof(*pp));

 pp->handle = read_pipe ? input : output;
 pp->read_pipe = read_pipe;
 pp->process = process;
 pp->handle_err = err_input;

 CloseHandle(read_pipe ? output : input);
 CloseHandle(err_output);
 return pp;

error:
 CloseHandle(output);
 CloseHandle(input);
 return ((void*)0);
}
