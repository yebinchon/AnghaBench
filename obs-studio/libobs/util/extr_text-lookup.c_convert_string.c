
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; size_t capacity; size_t len; } ;


 char* bstrdup_n (char const*,size_t) ;
 int dstr_replace (struct dstr*,char*,char*) ;

__attribute__((used)) static char *convert_string(const char *str, size_t len)
{
 struct dstr out;
 out.array = bstrdup_n(str, len);
 out.capacity = len + 1;
 out.len = len;

 dstr_replace(&out, "\\n", "\n");
 dstr_replace(&out, "\\t", "\t");
 dstr_replace(&out, "\\r", "\r");
 dstr_replace(&out, "\\\"", "\"");

 return out.array;
}
