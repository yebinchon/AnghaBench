
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {scalar_t__ start; } ;


 char* bstrdup0 (void*,struct bstr) ;
 char* talloc_strdup (void*,char*) ;

__attribute__((used)) static inline char *bstrto0(void *talloc_ctx, struct bstr str)
{
    return str.start ? bstrdup0(talloc_ctx, str) : talloc_strdup(talloc_ctx, "");
}
