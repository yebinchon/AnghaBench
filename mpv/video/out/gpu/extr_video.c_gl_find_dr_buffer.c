
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct gl_video {int num_dr_buffers; struct dr_buffer* dr_buffers; } ;
struct dr_buffer {TYPE_2__* buf; } ;
struct TYPE_3__ {size_t size; } ;
struct TYPE_4__ {TYPE_1__ params; int * data; } ;



__attribute__((used)) static struct dr_buffer *gl_find_dr_buffer(struct gl_video *p, uint8_t *ptr)
{
   for (int i = 0; i < p->num_dr_buffers; i++) {
       struct dr_buffer *buffer = &p->dr_buffers[i];
        uint8_t *bufptr = buffer->buf->data;
        size_t size = buffer->buf->params.size;
        if (ptr >= bufptr && ptr < bufptr + size)
            return buffer;
    }

    return ((void*)0);
}
