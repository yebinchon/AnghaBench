
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int* buf_ptr; int line_num; } ;


 int CH_EOF ;
 int PEEKC_EOB (int,int*) ;
 TYPE_1__* file ;
 int handle_eob () ;
 int tcc_error (char*) ;

uint8_t *parse_comment(uint8_t *p)
{
 int c;

 p++;
 for (;;) {

  for (;;) {
   c = *p;
   if (c == '\n' || c == '*' || c == '\\') {
    break;
   }
   p++;
   c = *p;
   if (c == '\n' || c == '*' || c == '\\') {
    break;
   }
   p++;
  }

  if (c == '\n') {
   file->line_num++;
   p++;
  } else if (c == '*') {
   p++;
   for (;;) {
    c = *p;
    if (c == '*') {
     p++;
    } else if (c == '/') {
     goto end_of_comment;
    } else if (c == '\\') {
     file->buf_ptr = p;
     c = handle_eob ();
     p = file->buf_ptr;
     if (c == '\\') {

      while (c == '\\') {
       PEEKC_EOB (c, p);
       if (c == '\n') {
        file->line_num++;
        PEEKC_EOB (c, p);
       } else if (c == '\r') {
        PEEKC_EOB (c, p);
        if (c == '\n') {
         file->line_num++;
         PEEKC_EOB (c, p);
        }
       } else {
        goto after_star;
       }
      }
     }
    } else {
     break;
    }
   }
after_star:
   ;
  } else {

   file->buf_ptr = p;
   c = handle_eob ();
   p = file->buf_ptr;
   if (c == CH_EOF) {
    tcc_error ("unexpected end of file in comment");
   } else if (c == '\\') {
    p++;
   }
  }
 }
end_of_comment:
 p++;
 return p;
}
