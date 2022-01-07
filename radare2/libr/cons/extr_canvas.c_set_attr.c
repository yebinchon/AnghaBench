
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int constpool; int attr; } ;
typedef int RStrBuf ;
typedef TYPE_1__ RConsCanvas ;


 scalar_t__ __isAnsiSequence (char const*) ;
 int r_str_constpool_get (int *,int ) ;
 int r_strbuf_append_n (int *,char const*,int const) ;
 int r_strbuf_fini (int *) ;
 int r_strbuf_get (int *) ;
 int r_strbuf_init (int *) ;

__attribute__((used)) static const char *set_attr(RConsCanvas *c, const char *s) {
 if (!c || !s) {
  return ((void*)0);
 }
 const char *p = s;

 while (__isAnsiSequence (p)) {
  p += 2;
  while (*p && *p != 'J' && *p != 'm' && *p != 'H') {
   p++;
  }
  p++;
 }

 const int slen = p - s;
 if (slen > 0) {
  RStrBuf tmp;
  r_strbuf_init (&tmp);
  r_strbuf_append_n (&tmp, s, slen);
  c->attr = r_str_constpool_get (&c->constpool, r_strbuf_get (&tmp));
  r_strbuf_fini (&tmp);
 }
 return p;
}
