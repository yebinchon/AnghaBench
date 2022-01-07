
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {int * inp_file; int inp_peek; scalar_t__ inp_end; scalar_t__ inp_ctr; scalar_t__ inp_curr; scalar_t__ inp_buf_index; scalar_t__ inp_buf_size; int * inp_buf; int * inp_hook; } ;


 int UD_EOI ;
 int UD_NON_STANDALONE (int ) ;

__attribute__((used)) static void
ud_inp_init(struct ud *u)
{
  u->inp_hook = ((void*)0);
  u->inp_buf = ((void*)0);
  u->inp_buf_size = 0;
  u->inp_buf_index = 0;
  u->inp_curr = 0;
  u->inp_ctr = 0;
  u->inp_end = 0;
  u->inp_peek = UD_EOI;
  UD_NON_STANDALONE(u->inp_file = ((void*)0));
}
