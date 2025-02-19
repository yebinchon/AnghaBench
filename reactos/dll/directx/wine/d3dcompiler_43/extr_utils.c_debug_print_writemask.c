
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int BWRITERSP_WRITEMASK_0 ;
 int BWRITERSP_WRITEMASK_1 ;
 int BWRITERSP_WRITEMASK_2 ;
 int BWRITERSP_WRITEMASK_3 ;
 int BWRITERSP_WRITEMASK_ALL ;
 char const* wine_dbg_sprintf (char*,char*) ;

__attribute__((used)) static const char *debug_print_writemask(DWORD mask)
{
    char ret[6];
    unsigned char pos = 1;

    if(mask == BWRITERSP_WRITEMASK_ALL) return "";
    ret[0] = '.';
    if(mask & BWRITERSP_WRITEMASK_0) ret[pos++] = 'x';
    if(mask & BWRITERSP_WRITEMASK_1) ret[pos++] = 'y';
    if(mask & BWRITERSP_WRITEMASK_2) ret[pos++] = 'z';
    if(mask & BWRITERSP_WRITEMASK_3) ret[pos++] = 'w';
    ret[pos] = 0;

    return wine_dbg_sprintf("%s", ret);
}
