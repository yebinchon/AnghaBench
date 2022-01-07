
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_image {int dummy; } ;
struct TYPE_3__ {struct mp_image* user_data; } ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_BUFFER_HEADER_T ;


 int talloc_free (struct mp_image*) ;

__attribute__((used)) static void input_port_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    struct mp_image *mpi = buffer->user_data;
    talloc_free(mpi);
}
