
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int handle; scalar_t__ read_pipe; } ;
typedef TYPE_1__ os_process_pipe_t ;
typedef size_t DWORD ;


 int WriteFile (int ,int const*,size_t,size_t*,int *) ;

size_t os_process_pipe_write(os_process_pipe_t *pp, const uint8_t *data,
        size_t len)
{
 DWORD bytes_written;
 bool success;

 if (!pp) {
  return 0;
 }
 if (pp->read_pipe) {
  return 0;
 }

 success =
  !!WriteFile(pp->handle, data, (DWORD)len, &bytes_written, ((void*)0));
 if (success && bytes_written) {
  return bytes_written;
 }

 return 0;
}
