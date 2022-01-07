
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int handle_err; } ;
typedef TYPE_1__ os_process_pipe_t ;
typedef size_t DWORD ;


 size_t GetLastError () ;
 int ReadFile (int ,int *,size_t,size_t*,int *) ;

size_t os_process_pipe_read_err(os_process_pipe_t *pp, uint8_t *data,
    size_t len)
{
 DWORD bytes_read;
 bool success;

 if (!pp || !pp->handle_err) {
  return 0;
 }

 success =
  !!ReadFile(pp->handle_err, data, (DWORD)len, &bytes_read, ((void*)0));
 if (success && bytes_read) {
  return bytes_read;
 } else
  bytes_read = GetLastError();

 return 0;
}
