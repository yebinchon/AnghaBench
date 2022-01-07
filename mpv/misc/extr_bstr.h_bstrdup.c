
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {unsigned char* start; int len; int member_1; int * member_0; } ;


 scalar_t__ talloc_memdup (void*,unsigned char*,int ) ;

__attribute__((used)) static inline struct bstr bstrdup(void *talloc_ctx, struct bstr str)
{
    struct bstr r = { ((void*)0), str.len };
    if (str.start)
        r.start = (unsigned char *)talloc_memdup(talloc_ctx, str.start, str.len);
    return r;
}
