
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 unsigned int PACK_FLAG_LITTLEENDIAN ;
 int * RSTRING_PTR (int ) ;
 scalar_t__ littleendian ;
 int memcpy (int *,int *,int) ;
 scalar_t__ mrb_float (int ) ;
 int str_len_ensure (int *,int ,int) ;

__attribute__((used)) static int
pack_float(mrb_state *mrb, mrb_value o, mrb_value str, mrb_int sidx, unsigned int flags)
{
  int i;
  float f;
  uint8_t *buffer = (uint8_t *)&f;
  str = str_len_ensure(mrb, str, sidx + 4);
  f = (float)mrb_float(o);

  if (flags & PACK_FLAG_LITTLEENDIAN) {
    if (littleendian) {
      memcpy(RSTRING_PTR(str) + sidx, buffer, 4);
    }
    else {
      for (i = 0; i < 4; ++i) {
        RSTRING_PTR(str)[sidx + i] = buffer[4 - i - 1];
      }
    }
  } else {
    if (littleendian) {
      for (i = 0; i < 4; ++i) {
        RSTRING_PTR(str)[sidx + i] = buffer[4 - i - 1];
      }
    }
    else {
      memcpy(RSTRING_PTR(str) + sidx, buffer, 4);
    }
  }

  return 4;
}
