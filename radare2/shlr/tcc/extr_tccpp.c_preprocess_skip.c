
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_2__ {void** buf_ptr; int line_num; } ;


 int CH_EOF ;
 int TOK_ELIF ;
 int TOK_ELSE ;
 int TOK_ENDIF ;
 int TOK_ERROR ;
 int TOK_IF ;
 int TOK_IFDEF ;
 int TOK_IFNDEF ;
 int TOK_LINEFEED ;
 int TOK_WARNING ;
 char ch ;
 int expect (char*) ;
 TYPE_1__* file ;
 int handle_eob () ;
 int handle_stray_noerror () ;
 int minp () ;
 int next_nomacro () ;
 void** parse_comment (void**) ;
 void** parse_line_comment (void**) ;
 void** parse_pp_string (void**,int,int *) ;
 scalar_t__ tcc_nerr () ;
 int tok ;

__attribute__((used)) static void preprocess_skip(void)
{
 int a, start_of_line, c, in_warn_or_error;
 uint8_t *p;

 p = file->buf_ptr;
 a = 0;
redo_start:
 start_of_line = 1;
 in_warn_or_error = 0;
 while (tcc_nerr () == 0) {
redo_no_start:
  c = *p;
  switch (c) {
  case ' ':
  case '\t':
  case '\f':
  case '\v':
  case '\r':
   p++;
   goto redo_no_start;
  case '\n':
   file->line_num++;
   p++;
   goto redo_start;
  case '\\':
   file->buf_ptr = p;
   c = handle_eob ();
   if (c == CH_EOF) {
    expect ("#endif");
    return;
   } else if (c == '\\') {
    ch = file->buf_ptr[0];
    handle_stray_noerror ();
   }
   p = file->buf_ptr;
   goto redo_no_start;

  case '\"':
  case '\'':
   if (in_warn_or_error) {
    goto _default;
   }
   p = parse_pp_string (p, c, ((void*)0));
   if (p == ((void*)0)) {
    return;
   }
   break;

  case '/':
   if (in_warn_or_error) {
    goto _default;
   }
   file->buf_ptr = p;
   ch = *p;
   minp ();
   p = file->buf_ptr;
   if (ch == '*') {
    p = parse_comment (p);
   } else if (ch == '/') {
    p = parse_line_comment (p);
   }
   break;
  case '#':
   p++;
   if (start_of_line) {
    file->buf_ptr = p;
    next_nomacro ();
    p = file->buf_ptr;
    if (a == 0 &&
        (tok == TOK_ELSE || tok == TOK_ELIF || tok == TOK_ENDIF)) {
     goto the_end;
    }
    if (tok == TOK_IF || tok == TOK_IFDEF || tok == TOK_IFNDEF) {
     a++;
    } else if (tok == TOK_ENDIF) {
     a--;
    } else if (tok == TOK_ERROR || tok == TOK_WARNING) {
     in_warn_or_error = 1;
    } else if (tok == TOK_LINEFEED) {
     goto redo_start;
    }
   }
   break;
_default:
  default:
   p++;
   break;
  }
  start_of_line = 0;
 }
the_end:
 ;
 file->buf_ptr = p;
}
