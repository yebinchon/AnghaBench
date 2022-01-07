
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int os_process_pipe_t ;


 int UNUSED_PARAMETER (size_t) ;

size_t os_process_pipe_read_err(os_process_pipe_t *pp, uint8_t *data,
    size_t len)
{

 UNUSED_PARAMETER(pp);
 UNUSED_PARAMETER(data);
 UNUSED_PARAMETER(len);
 return 0;
}
