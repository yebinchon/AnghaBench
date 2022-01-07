
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int mrb_sym ;
typedef int mrb_state ;
struct TYPE_5__ {int rlen; struct TYPE_5__** reps; } ;
typedef TYPE_1__ mrb_irep ;


 size_t get_debug_record_size (int *,TYPE_1__*) ;
 int mrb_assert (int) ;
 size_t write_debug_record_1 (int *,TYPE_1__*,int *,int const*,int ) ;

__attribute__((used)) static size_t
write_debug_record(mrb_state *mrb, mrb_irep *irep, uint8_t *bin, mrb_sym const* filenames, uint16_t filenames_len)
{
  size_t size, len;
  int irep_no;

  size = len = write_debug_record_1(mrb, irep, bin, filenames, filenames_len);
  bin += len;
  for (irep_no = 0; irep_no < irep->rlen; irep_no++) {
    len = write_debug_record(mrb, irep->reps[irep_no], bin, filenames, filenames_len);
    bin += len;
    size += len;
  }

  mrb_assert(size == get_debug_record_size(mrb, irep));
  return size;
}
