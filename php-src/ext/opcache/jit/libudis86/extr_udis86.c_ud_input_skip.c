
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {int inp_end; int (* inp_hook ) (struct ud*) ;size_t inp_buf_size; size_t inp_buf_index; int * inp_buf; } ;


 int UDERR (struct ud*,char*) ;
 int UD_EOI ;
 int stub1 (struct ud*) ;

void
ud_input_skip(struct ud* u, size_t n)
{
  if (u->inp_end) {
    return;
  }
  if (u->inp_buf == ((void*)0)) {
    while (n--) {
      int c = u->inp_hook(u);
      if (c == UD_EOI) {
        goto eoi;
      }
    }
    return;
  } else {
    if (n > u->inp_buf_size ||
        u->inp_buf_index > u->inp_buf_size - n) {
      u->inp_buf_index = u->inp_buf_size;
      goto eoi;
    }
    u->inp_buf_index += n;
    return;
  }
eoi:
  u->inp_end = 1;
  UDERR(u, "cannot skip, eoi received\b");
  return;
}
