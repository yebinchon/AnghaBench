
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_ary_push (int *,int ,int ) ;
 int mrb_fixnum_value (int ) ;
 unsigned long utf8_to_uv (int *,char const*,long*) ;

__attribute__((used)) static int
unpack_utf8(mrb_state *mrb, const unsigned char * src, int srclen, mrb_value ary, unsigned int flags)
{
  unsigned long uv;
  long lenp = srclen;

  if (srclen == 0) {
    return 1;
  }
  uv = utf8_to_uv(mrb, (const char *)src, &lenp);
  mrb_ary_push(mrb, ary, mrb_fixnum_value((mrb_int)uv));
  return (int)lenp;
}
