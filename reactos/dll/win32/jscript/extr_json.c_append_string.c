
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stringify_ctx_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int append_string_len (int *,int const*,int ) ;
 int lstrlenW (int const*) ;

__attribute__((used)) static inline BOOL append_string(stringify_ctx_t *ctx, const WCHAR *str)
{
    return append_string_len(ctx, str, lstrlenW(str));
}
