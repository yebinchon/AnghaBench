
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ptr; } ;
struct TYPE_7__ {int (* reset ) (TYPE_2__*) ;int free; int finish; int update; int block_size; int result_size; TYPE_1__ p; } ;
typedef TYPE_2__ PX_MD ;
typedef int MD5_CTX ;


 int int_md5_block_len ;
 int int_md5_finish ;
 int int_md5_free ;
 int int_md5_len ;
 int int_md5_reset (TYPE_2__*) ;
 int int_md5_update ;
 int memset (int *,int ,int) ;
 int * px_alloc (int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
init_md5(PX_MD *md)
{
 MD5_CTX *ctx;

 ctx = px_alloc(sizeof(*ctx));
 memset(ctx, 0, sizeof(*ctx));

 md->p.ptr = ctx;

 md->result_size = int_md5_len;
 md->block_size = int_md5_block_len;
 md->reset = int_md5_reset;
 md->update = int_md5_update;
 md->finish = int_md5_finish;
 md->free = int_md5_free;

 md->reset(md);
}
