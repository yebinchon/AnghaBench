
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int * value; } ;
typedef TYPE_1__ sspi_buffer_desc ;


 int free (int *) ;

void sspi_release_buffer(sspi_buffer_desc *buf)
{
    if (buf->value)
        free(buf->value);
    buf->value = ((void*)0);
    buf->length = 0;
}
