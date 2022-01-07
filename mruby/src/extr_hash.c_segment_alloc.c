
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct segkv {int dummy; } ;
struct TYPE_4__ {int size; int * next; } ;
typedef TYPE_1__ segment ;
typedef int mrb_state ;


 int HT_SEG_INCREASE_RATIO ;
 int MRB_HT_INIT_SIZE ;
 int UINT16_MAX ;
 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static segment*
segment_alloc(mrb_state *mrb, segment *seg)
{
  uint32_t size;

  if (!seg) size = MRB_HT_INIT_SIZE;
  else {
    size = seg->size*HT_SEG_INCREASE_RATIO + 1;
    if (size > UINT16_MAX) size = UINT16_MAX;
  }

  seg = (segment*)mrb_malloc(mrb, sizeof(segment)+sizeof(struct segkv)*size);
  seg->size = size;
  seg->next = ((void*)0);

  return seg;
}
