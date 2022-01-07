
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int* buf_ptr; int line_num; } ;
typedef int CString ;


 int CH_EOF ;
 int PEEKC_EOB (int,int*) ;
 int cstr_ccat (int *,int) ;
 int expect (char*) ;
 TYPE_1__* file ;
 int handle_eob () ;
 int tcc_error (char*,int) ;
 scalar_t__ tcc_nerr () ;

__attribute__((used)) static uint8_t *parse_pp_string(uint8_t *p,
    int sep, CString *str)
{
 int c;
 p++;
 while (tcc_nerr () == 0) {
  c = *p;
  if (c == sep) {
   break;
  } else if (c == '\\') {
   file->buf_ptr = p;
   c = handle_eob ();
   p = file->buf_ptr;
   if (c == CH_EOF) {
unterminated_string:

    tcc_error ("missing terminating %c character", sep);
    return ((void*)0);
   } else if (c == '\\') {

    PEEKC_EOB (c, p);
    if (c == '\n') {
     file->line_num++;
     p++;
    } else if (c == '\r') {
     PEEKC_EOB (c, p);
     if (c != '\n') {
      expect ("'\n' after '\r'");
      return ((void*)0);
     }
     file->line_num++;
     p++;
    } else if (c == CH_EOF) {
     goto unterminated_string;
    } else {
     if (str) {
      cstr_ccat (str, '\\');
      cstr_ccat (str, c);
     }
     p++;
    }
   }
  } else if (c == '\n') {
   file->line_num++;
   goto add_char;
  } else if (c == '\r') {
   PEEKC_EOB (c, p);
   if (c != '\n') {
    if (str) {
     cstr_ccat (str, '\r');
    }
   } else {
    file->line_num++;
    goto add_char;
   }
  } else {
add_char:
   if (str) {
    cstr_ccat (str, c);
   }
   p++;
  }
 }
 p++;
 return p;
}
