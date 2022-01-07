
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,long,long) ;
 unsigned long* utf8_limits ;

__attribute__((used)) static unsigned long
utf8_to_uv(mrb_state *mrb, const char *p, long *lenp)
{
  int c = *p++ & 0xff;
  unsigned long uv = c;
  long n = 1;

  if (!(uv & 0x80)) {
    *lenp = 1;
    return uv;
  }
  if (!(uv & 0x40)) {
    *lenp = 1;
    mrb_raise(mrb, E_ARGUMENT_ERROR, "malformed UTF-8 character");
  }

  if (!(uv & 0x20)) { n = 2; uv &= 0x1f; }
  else if (!(uv & 0x10)) { n = 3; uv &= 0x0f; }
  else if (!(uv & 0x08)) { n = 4; uv &= 0x07; }
  else if (!(uv & 0x04)) { n = 5; uv &= 0x03; }
  else if (!(uv & 0x02)) { n = 6; uv &= 0x01; }
  else {
    *lenp = 1;
    mrb_raise(mrb, E_ARGUMENT_ERROR, "malformed UTF-8 character");
  }
  if (n > *lenp) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "malformed UTF-8 character (expected %d bytes, given %d bytes)",
               n, *lenp);
  }
  *lenp = n--;
  if (n != 0) {
    while (n--) {
      c = *p++ & 0xff;
      if ((c & 0xc0) != 0x80) {
        *lenp -= n + 1;
        mrb_raise(mrb, E_ARGUMENT_ERROR, "malformed UTF-8 character");
      }
      else {
        c &= 0x3f;
        uv = uv << 6 | c;
      }
    }
  }
  n = *lenp - 1;
  if (uv < utf8_limits[n]) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "redundant UTF-8 sequence");
  }
  return uv;
}
