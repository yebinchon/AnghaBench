
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RStrBuf ;


 int free (char*) ;
 int r_strbuf_append (int *,char*) ;
 int r_strbuf_appendf (int *,char*,char*) ;
 char* r_strbuf_drain (int *) ;
 int r_strbuf_free (int *) ;
 int * r_strbuf_new (char*) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *replace_directives_for(char *str, char *token) {
 RStrBuf *sb = r_strbuf_new ("");
 char *p = ((void*)0);
 char *q = str;
 bool changes = 0;
 for (;;) {
  if (q) {
   p = strstr (q, token);
  }
  if (p) {
   char *nl = strchr (p, '\n');
   if (nl) {
    *nl ++ = 0;
   }
   char _ = *p;
   *p = 0;
   r_strbuf_append (sb, q);
   *p = _;
   r_strbuf_appendf (sb, "<{%s}>\n", p + 1);
   q = nl;
   changes = 1;
  } else {
   if (q) {
    r_strbuf_append (sb, q);
   }
   break;
  }
 }
 if (changes) {
  free (str);
  return r_strbuf_drain (sb);
 }
 r_strbuf_free (sb);
 return str;
}
