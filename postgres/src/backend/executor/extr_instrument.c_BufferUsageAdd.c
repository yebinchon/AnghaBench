
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int blk_write_time; int blk_read_time; scalar_t__ temp_blks_written; scalar_t__ temp_blks_read; scalar_t__ local_blks_written; scalar_t__ local_blks_dirtied; scalar_t__ local_blks_read; scalar_t__ local_blks_hit; scalar_t__ shared_blks_written; scalar_t__ shared_blks_dirtied; scalar_t__ shared_blks_read; scalar_t__ shared_blks_hit; } ;
typedef TYPE_1__ BufferUsage ;


 int INSTR_TIME_ADD (int ,int ) ;

__attribute__((used)) static void
BufferUsageAdd(BufferUsage *dst, const BufferUsage *add)
{
 dst->shared_blks_hit += add->shared_blks_hit;
 dst->shared_blks_read += add->shared_blks_read;
 dst->shared_blks_dirtied += add->shared_blks_dirtied;
 dst->shared_blks_written += add->shared_blks_written;
 dst->local_blks_hit += add->local_blks_hit;
 dst->local_blks_read += add->local_blks_read;
 dst->local_blks_dirtied += add->local_blks_dirtied;
 dst->local_blks_written += add->local_blks_written;
 dst->temp_blks_read += add->temp_blks_read;
 dst->temp_blks_written += add->temp_blks_written;
 INSTR_TIME_ADD(dst->blk_read_time, add->blk_read_time);
 INSTR_TIME_ADD(dst->blk_write_time, add->blk_write_time);
}
