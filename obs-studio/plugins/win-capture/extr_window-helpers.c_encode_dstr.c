
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int dummy; } ;


 int dstr_replace (struct dstr*,char*,char*) ;

__attribute__((used)) static inline void encode_dstr(struct dstr *str)
{
 dstr_replace(str, "#", "#22");
 dstr_replace(str, ":", "#3A");
}
