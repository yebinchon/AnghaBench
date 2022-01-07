
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int BWRITERSPSM_ABS ;
 int BWRITERSPSM_ABSNEG ;
 int BWRITERSPSM_BIAS ;
 int BWRITERSPSM_BIASNEG ;
 int BWRITERSPSM_COMP ;
 int BWRITERSPSM_DW ;
 int BWRITERSPSM_DZ ;
 int BWRITERSPSM_NEG ;
 int BWRITERSPSM_NOT ;
 int BWRITERSPSM_SIGN ;
 int BWRITERSPSM_SIGNNEG ;
 int BWRITERSPSM_X2 ;
 int BWRITERSPSM_X2NEG ;
 int FIXME (char*,int) ;
 int WINE_D3DCOMPILER_TO_STR (int ) ;

const char *debug_print_srcmod(DWORD mod)
{
    switch (mod)
    {
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_NEG);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_BIAS);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_BIASNEG);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_SIGN);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_SIGNNEG);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_COMP);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_X2);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_X2NEG);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_DZ);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_DW);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_ABS);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_ABSNEG);
        WINE_D3DCOMPILER_TO_STR(BWRITERSPSM_NOT);
        default:
            FIXME("Unrecognized source modifier %#x.\n", mod);
            return "unrecognized_src_mod";
    }
}
