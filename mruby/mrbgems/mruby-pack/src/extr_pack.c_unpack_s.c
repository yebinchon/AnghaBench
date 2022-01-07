
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 unsigned int PACK_FLAG_LITTLEENDIAN ;
 unsigned int PACK_FLAG_SIGNED ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_fixnum_value (int) ;

__attribute__((used)) static int
unpack_s(mrb_state *mrb, const unsigned char *src, int srclen, mrb_value ary, unsigned int flags)
{
  int n;

  if (flags & PACK_FLAG_LITTLEENDIAN) {
    n = src[1] * 256 + src[0];
  } else {
    n = src[0] * 256 + src[1];
  }
  if ((flags & PACK_FLAG_SIGNED) && (n >= 0x8000)) {
    n -= 0x10000;
  }
  mrb_ary_push(mrb, ary, mrb_fixnum_value(n));
  return 2;
}
