
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_buffers {int decrypt_buf; int encrypt_buf; int decompress_buf; int compress_buf; int aux_buf; int read_tun_buf; int read_link_buf; } ;


 int free (struct context_buffers*) ;
 int free_buf (int *) ;

void
free_context_buffers(struct context_buffers *b)
{
    if (b)
    {
        free_buf(&b->read_link_buf);
        free_buf(&b->read_tun_buf);
        free_buf(&b->aux_buf);






        free_buf(&b->encrypt_buf);
        free_buf(&b->decrypt_buf);

        free(b);
    }
}
