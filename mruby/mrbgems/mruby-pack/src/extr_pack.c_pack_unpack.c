
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpl {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_RUNTIME_ERROR ;





 int PACK_DIR_INVALID ;

 int PACK_DIR_NUL ;




 unsigned int PACK_FLAG_COUNT2 ;
 scalar_t__ RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 scalar_t__ RSTRING_LEN (int ) ;
 scalar_t__ RSTRING_PTR (int ) ;
 scalar_t__ has_tmpl (struct tmpl*) ;
 int mrb_ary_new (int *) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int prepare_tmpl (int *,struct tmpl*) ;
 int read_tmpl (int *,struct tmpl*,int*,int*,int*,int*,unsigned int*) ;
 int unpack_a (int *,unsigned char const*,int,int ,int,unsigned int) ;
 int unpack_c (int *,unsigned char const*,int,int ,unsigned int) ;
 int unpack_double (int *,unsigned char const*,int,int ,unsigned int) ;
 int unpack_float (int *,unsigned char const*,int,int ,unsigned int) ;
 int unpack_h (int *,unsigned char const*,int,int ,int,unsigned int) ;
 int unpack_l (int *,unsigned char const*,int,int ,unsigned int) ;
 int unpack_m (int *,unsigned char const*,int,int ,unsigned int) ;
 int unpack_q (int *,unsigned char const*,int,int ,unsigned int) ;
 int unpack_s (int *,unsigned char const*,int,int ,unsigned int) ;
 int unpack_utf8 (int *,unsigned char const*,int,int ,unsigned int) ;
 scalar_t__ unpack_x (int *,unsigned char const*,int,int ,int,unsigned int) ;

__attribute__((used)) static mrb_value
pack_unpack(mrb_state *mrb, mrb_value str, int single)
{
  mrb_value result;
  struct tmpl tmpl;
  int count;
  unsigned int flags;
  int dir, size, type;
  int srcidx, srclen;
  const unsigned char *sptr;

  prepare_tmpl(mrb, &tmpl);

  srcidx = 0;
  srclen = (int)RSTRING_LEN(str);

  result = mrb_ary_new(mrb);
  while (has_tmpl(&tmpl)) {
    read_tmpl(mrb, &tmpl, &dir, &type, &size, &count, &flags);

    if (dir == PACK_DIR_INVALID)
      continue;
    else if (dir == PACK_DIR_NUL) {
      srcidx += unpack_x(mrb, sptr, srclen - srcidx, result, count, flags);
      continue;
    }

    if (flags & PACK_FLAG_COUNT2) {
      sptr = (const unsigned char *)RSTRING_PTR(str) + srcidx;
      switch (dir) {
      case 133:
        srcidx += unpack_h(mrb, sptr, srclen - srcidx, result, count, flags);
        break;
      case 129:
        srcidx += unpack_a(mrb, sptr, srclen - srcidx, result, count, flags);
        break;
      case 137:
        srcidx += unpack_m(mrb, sptr, srclen - srcidx, result, flags);
        break;
      }
      continue;
    }

    while (count != 0) {
      if (srclen - srcidx < size) {
        while (count-- > 0) {
          mrb_ary_push(mrb, result, mrb_nil_value());
        }
        break;
      }

      sptr = (const unsigned char*)RSTRING_PTR(str) + srcidx;
      switch (dir) {
      case 136:
        srcidx += unpack_c(mrb, sptr, srclen - srcidx, result, flags);
        break;
      case 130:
        srcidx += unpack_s(mrb, sptr, srclen - srcidx, result, flags);
        break;
      case 132:
        srcidx += unpack_l(mrb, sptr, srclen - srcidx, result, flags);
        break;
      case 131:
        srcidx += unpack_q(mrb, sptr, srclen - srcidx, result, flags);
        break;

      case 134:
        srcidx += unpack_float(mrb, sptr, srclen - srcidx, result, flags);
        break;
      case 135:
        srcidx += unpack_double(mrb, sptr, srclen - srcidx, result, flags);
        break;

      case 128:
        srcidx += unpack_utf8(mrb, sptr, srclen - srcidx, result, flags);
        break;
      default:
        mrb_raise(mrb, E_RUNTIME_ERROR, "mruby-pack's bug");
      }
      if (count > 0) {
        count--;
      }
    }
    if (single) break;
  }

  if (single) {
    if (RARRAY_LEN(result) > 0) {
      return RARRAY_PTR(result)[0];
    }
    return mrb_nil_value();
  }
  return result;
}
