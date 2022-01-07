
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dstr {char* array; int member_0; } ;
struct TYPE_3__ {int unnamed_index; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 char* bstrdup (char const*) ;
 int dstr_printf (struct dstr*,char*,int ) ;
 TYPE_2__* obs ;

__attribute__((used)) static inline char *dup_name(const char *name, bool private)
{
 if (private && !name)
  return ((void*)0);

 if (!name || !*name) {
  struct dstr unnamed = {0};
  dstr_printf(&unnamed, "__unnamed%04lld",
       obs->data.unnamed_index++);

  return unnamed.array;
 } else {
  return bstrdup(name);
 }
}
