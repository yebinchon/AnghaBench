
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef char WCHAR ;
typedef int HRESULT ;


 int do_attribute_tag_format (int *,int *,unsigned int,int *,int *,char const*,char const*) ;

__attribute__((used)) static HRESULT String_anchor(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    static const WCHAR fontW[] = {'A',0};
    static const WCHAR colorW[] = {'N','A','M','E',0};

    return do_attribute_tag_format(ctx, jsthis, argc, argv, r, fontW, colorW);
}
