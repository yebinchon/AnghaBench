
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int file; int read_pipe; } ;
typedef TYPE_1__ os_process_pipe_t ;


 size_t fread (int *,int,size_t,int ) ;

size_t os_process_pipe_read(os_process_pipe_t *pp, uint8_t *data, size_t len)
{
 if (!pp) {
  return 0;
 }
 if (!pp->read_pipe) {
  return 0;
 }

 return fread(data, 1, len, pp->file);
}
