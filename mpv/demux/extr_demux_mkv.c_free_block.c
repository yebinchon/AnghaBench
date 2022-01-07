
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_info {int num_laces; int additions; int * laces; } ;


 int TA_FREEP (int *) ;
 int av_buffer_unref (int *) ;

__attribute__((used)) static void free_block(struct block_info *block)
{
    for (int n = 0; n < block->num_laces; n++)
        av_buffer_unref(&block->laces[n]);
    block->num_laces = 0;
    TA_FREEP(&block->additions);
}
