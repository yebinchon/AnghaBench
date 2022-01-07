
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 unsigned int PACK_FLAG_LITTLEENDIAN ;
 char* RSTRING_PTR (int ) ;
 scalar_t__ mrb_fixnum (int ) ;
 int str_len_ensure (int *,int ,int) ;

__attribute__((used)) static int
pack_q(mrb_state *mrb, mrb_value o, mrb_value str, mrb_int sidx, unsigned int flags)
{
  uint64_t n;

  str = str_len_ensure(mrb, str, sidx + 8);
  n = (uint64_t)mrb_fixnum(o);
  if (flags & PACK_FLAG_LITTLEENDIAN) {
    RSTRING_PTR(str)[sidx+0] = (char)(n & 0xff);
    RSTRING_PTR(str)[sidx+1] = (char)(n >> 8);
    RSTRING_PTR(str)[sidx+2] = (char)(n >> 16);
    RSTRING_PTR(str)[sidx+3] = (char)(n >> 24);
    RSTRING_PTR(str)[sidx+4] = (char)(n >> 32);
    RSTRING_PTR(str)[sidx+5] = (char)(n >> 40);
    RSTRING_PTR(str)[sidx+6] = (char)(n >> 48);
    RSTRING_PTR(str)[sidx+7] = (char)(n >> 56);
  } else {
    RSTRING_PTR(str)[sidx+0] = (char)(n >> 56);
    RSTRING_PTR(str)[sidx+1] = (char)(n >> 48);
    RSTRING_PTR(str)[sidx+2] = (char)(n >> 40);
    RSTRING_PTR(str)[sidx+3] = (char)(n >> 32);
    RSTRING_PTR(str)[sidx+4] = (char)(n >> 24);
    RSTRING_PTR(str)[sidx+5] = (char)(n >> 16);
    RSTRING_PTR(str)[sidx+6] = (char)(n >> 8);
    RSTRING_PTR(str)[sidx+7] = (char)(n & 0xff);
  }
  return 8;
}
