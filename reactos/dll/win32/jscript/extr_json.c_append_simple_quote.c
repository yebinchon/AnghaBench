
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stringify_ctx_t ;
typedef char WCHAR ;
typedef int BOOL ;


 int append_string_len (int *,char*,int) ;

__attribute__((used)) static inline BOOL append_simple_quote(stringify_ctx_t *ctx, WCHAR c)
{
    WCHAR str[] = {'\\',c};
    return append_string_len(ctx, str, 2);
}
