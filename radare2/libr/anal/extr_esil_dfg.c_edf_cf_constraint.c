
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RStrBuf ;


 int r_strbuf_appendf (int *,char*,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static void edf_cf_constraint(RStrBuf *result, const char *consume, const char *o, const char *n) {
 r_strbuf_appendf (result, ":((%s&mask(%s&0x3f))<(%s&mask(%s&0x3f)))",
  n, consume, o, consume);
}
