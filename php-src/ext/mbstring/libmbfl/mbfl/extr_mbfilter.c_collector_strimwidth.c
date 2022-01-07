
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pos; } ;
struct collector_strimwidth_data {int status; int outwidth; int width; int outchar; TYPE_2__* decoder; int decoder_backup; TYPE_1__ device; int endpos; int from; } ;
struct TYPE_7__ {int (* filter_function ) (int,TYPE_2__*) ;} ;


 int is_fullwidth (int) ;
 int mbfl_convert_filter_copy (TYPE_2__*,int ) ;
 int stub1 (int,TYPE_2__*) ;
 int stub2 (int,TYPE_2__*) ;
 int stub3 (int,TYPE_2__*) ;

__attribute__((used)) static int
collector_strimwidth(int c, void* data)
{
 struct collector_strimwidth_data *pc = (struct collector_strimwidth_data*)data;

 switch (pc->status) {
 case 10:
  (*pc->decoder->filter_function)(c, pc->decoder);
  break;
 default:
  if (pc->outchar >= pc->from) {
   pc->outwidth += (is_fullwidth(c) ? 2: 1);

   if (pc->outwidth > pc->width) {
    if (pc->status == 0) {
     pc->endpos = pc->device.pos;
     mbfl_convert_filter_copy(pc->decoder, pc->decoder_backup);
    }
    pc->status++;
    (*pc->decoder->filter_function)(c, pc->decoder);
    c = -1;
   } else {
    (*pc->decoder->filter_function)(c, pc->decoder);
   }
  }
  pc->outchar++;
  break;
 }

 return c;
}
