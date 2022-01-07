
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char TOK_UIDENT ;
 int next () ;
 char tok ;
 int unget_tok (int) ;

__attribute__((used)) static int is_label(void) {
 int last_tok;


 if (tok < TOK_UIDENT) {
  return 0;
 }

 last_tok = tok;
 next ();
 if (tok == ':') {
  next ();
  return last_tok;
 } else {
  unget_tok (last_tok);
  return 0;
 }
}
