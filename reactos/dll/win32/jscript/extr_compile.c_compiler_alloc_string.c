
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef int compiler_ctx_t ;
typedef int WCHAR ;


 int * compiler_alloc_string_len (int *,int const*,int ) ;
 int lstrlenW (int const*) ;

__attribute__((used)) static jsstr_t *compiler_alloc_string(compiler_ctx_t *ctx, const WCHAR *str)
{
    return compiler_alloc_string_len(ctx, str, lstrlenW(str));
}
