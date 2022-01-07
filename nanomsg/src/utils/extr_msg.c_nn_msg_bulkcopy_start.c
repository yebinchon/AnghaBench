
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nn_msg {int body; int hdrs; int sphdr; } ;


 int nn_chunkref_bulkcopy_start (int *,int ) ;

void nn_msg_bulkcopy_start (struct nn_msg *self, uint32_t copies)
{
    nn_chunkref_bulkcopy_start (&self->sphdr, copies);
    nn_chunkref_bulkcopy_start (&self->hdrs, copies);
    nn_chunkref_bulkcopy_start (&self->body, copies);
}
