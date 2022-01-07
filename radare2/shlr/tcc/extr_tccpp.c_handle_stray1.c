
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_2__ {void** buf_end; void** buf_ptr; } ;


 void* ch ;
 TYPE_1__* file ;
 int handle_eob () ;
 int handle_stray () ;

__attribute__((used)) static int handle_stray1(uint8_t *p)
{
 int c;

 if (p >= file->buf_end) {
  file->buf_ptr = p;
  c = handle_eob ();
  p = file->buf_ptr;
  if (c == '\\') {
   goto parse_stray;
  }
 } else {
parse_stray:
  file->buf_ptr = p;
  ch = *p;
  handle_stray ();
  p = file->buf_ptr;
  c = *p;
 }
 return c;
}
