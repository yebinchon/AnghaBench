
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ read_pos; scalar_t__ write_pos; int pending; } ;
typedef TYPE_1__ lzma_mf ;


 int assert (int) ;

__attribute__((used)) static void
move_pending(lzma_mf *mf)
{
 ++mf->read_pos;
 assert(mf->read_pos <= mf->write_pos);
 ++mf->pending;
}
