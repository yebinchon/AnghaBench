
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int file; scalar_t__ read_pipe; } ;
typedef TYPE_1__ os_process_pipe_t ;


 size_t fwrite (int const*,int,size_t,int ) ;

size_t os_process_pipe_write(os_process_pipe_t *pp, const uint8_t *data,
        size_t len)
{
 if (!pp) {
  return 0;
 }
 if (pp->read_pipe) {
  return 0;
 }

 return fwrite(data, 1, len, pp->file);
}
