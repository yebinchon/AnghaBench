
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ud {int inp_buf_index; int inp_ctr; int const* inp_buf; int const* inp_sess; } ;



extern const uint8_t*
ud_insn_ptr(const struct ud* u)
{
  return (u->inp_buf == ((void*)0)) ?
            u->inp_sess : u->inp_buf + (u->inp_buf_index - u->inp_ctr);
}
