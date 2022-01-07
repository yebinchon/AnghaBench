
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {char* asm_buf_int; char* asm_buf; size_t asm_buf_size; } ;



void
ud_set_asm_buffer(struct ud *u, char *buf, size_t size)
{
  if (buf == ((void*)0)) {
    ud_set_asm_buffer(u, u->asm_buf_int, sizeof(u->asm_buf_int));
  } else {
    u->asm_buf = buf;
    u->asm_buf_size = size;
  }
}
