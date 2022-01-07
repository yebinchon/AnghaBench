
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ read_pos; scalar_t__ read_limit; scalar_t__ action; scalar_t__ write_pos; int * buffer; scalar_t__ read_ahead; } ;
typedef TYPE_1__ lzma_mf ;
struct TYPE_8__ {int is_initialized; int * literal; int rc; int ** is_match; } ;
typedef TYPE_2__ lzma_coder ;


 scalar_t__ LZMA_FINISH ;
 scalar_t__ LZMA_RUN ;
 int assert (int) ;
 scalar_t__ mf_position (TYPE_1__*) ;
 int mf_skip (TYPE_1__*,int) ;
 int rc_bit (int *,int *,int ) ;
 int rc_bittree (int *,int ,int,int ) ;

__attribute__((used)) static bool
encode_init(lzma_coder *coder, lzma_mf *mf)
{
 assert(mf_position(mf) == 0);

 if (mf->read_pos == mf->read_limit) {
  if (mf->action == LZMA_RUN)
   return 0;


  assert(mf->write_pos == mf->read_pos);
  assert(mf->action == LZMA_FINISH);
 } else {


  mf_skip(mf, 1);
  mf->read_ahead = 0;
  rc_bit(&coder->rc, &coder->is_match[0][0], 0);
  rc_bittree(&coder->rc, coder->literal[0], 8, mf->buffer[0]);
 }


 coder->is_initialized = 1;

 return 1;
}
