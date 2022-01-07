
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; int member_0; } ;


 int dstr_copy (struct dstr*,char const*) ;
 int dstr_replace (struct dstr*,char*,char*) ;

__attribute__((used)) static inline char *decode_str(const char *src)
{
 struct dstr str = {0};
 dstr_copy(&str, src);
 dstr_replace(&str, "#3A", ":");
 dstr_replace(&str, "#22", "#");
 return str.array;
}
