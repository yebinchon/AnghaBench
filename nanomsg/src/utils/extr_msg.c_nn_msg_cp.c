
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_msg {int body; int hdrs; int sphdr; } ;


 int nn_chunkref_cp (int *,int *) ;

void nn_msg_cp (struct nn_msg *dst, struct nn_msg *src)
{
    nn_chunkref_cp (&dst->sphdr, &src->sphdr);
    nn_chunkref_cp (&dst->hdrs, &src->hdrs);
    nn_chunkref_cp (&dst->body, &src->body);
}
