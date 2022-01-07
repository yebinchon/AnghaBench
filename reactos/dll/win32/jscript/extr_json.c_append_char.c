
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stringify_ctx_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int append_string_len (int *,int *,int) ;

__attribute__((used)) static inline BOOL append_char(stringify_ctx_t *ctx, WCHAR c)
{
    return append_string_len(ctx, &c, 1);
}
