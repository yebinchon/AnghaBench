
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RStrBuf ;
typedef int RParse ;


 int free (char*) ;
 char* malloc (int) ;
 int r_parse_parse (int *,char*,char*) ;
 char* r_strbuf_get (int *) ;
 size_t r_strbuf_length (int *) ;
 int r_strbuf_set (int *,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void parseHeap(RParse *p, RStrBuf *s) {
 char *op_buf_asm = r_strbuf_get (s);
 size_t len = r_strbuf_length (s);
 char *out = malloc (64 + (len * 2));
 if (out) {
  *out = 0;
  strcpy (out , op_buf_asm);

  r_parse_parse (p, op_buf_asm, out);
  r_strbuf_set (s, out);
  free (out);
 }
}
