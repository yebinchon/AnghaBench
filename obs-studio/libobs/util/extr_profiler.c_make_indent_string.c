
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
struct dstr {scalar_t__ len; } ;


 char* DOWN_RIGHT ;
 char* VPIPE ;
 char* VPIPE_RIGHT ;
 int dstr_cat (struct dstr*,char const*) ;
 int dstr_cat_ch (struct dstr*,int ) ;

__attribute__((used)) static void make_indent_string(struct dstr *indent_buffer, unsigned indent,
          uint64_t active)
{
 indent_buffer->len = 0;

 if (!indent) {
  dstr_cat_ch(indent_buffer, 0);
  return;
 }

 for (size_t i = 0; i < indent; i++) {
  const char *fragment = "";
  bool last = i + 1 == indent;
  if (active & ((uint64_t)1 << i))
   fragment = last ? VPIPE_RIGHT : VPIPE;
  else
   fragment = last ? DOWN_RIGHT : "  ";

  dstr_cat(indent_buffer, fragment);
 }
}
