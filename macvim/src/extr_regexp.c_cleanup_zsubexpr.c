
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lpos_T ;
typedef int char_u ;


 scalar_t__ FALSE ;
 int NSUBEXP ;
 scalar_t__ REG_MULTI ;
 scalar_t__ need_clear_zsubexpr ;
 int reg_endzp ;
 int reg_endzpos ;
 int reg_startzp ;
 int reg_startzpos ;
 int vim_memset (int ,int,int) ;

__attribute__((used)) static void
cleanup_zsubexpr()
{
    if (need_clear_zsubexpr)
    {
 if (REG_MULTI)
 {

     vim_memset(reg_startzpos, 0xff, sizeof(lpos_T) * NSUBEXP);
     vim_memset(reg_endzpos, 0xff, sizeof(lpos_T) * NSUBEXP);
 }
 else
 {
     vim_memset(reg_startzp, 0, sizeof(char_u *) * NSUBEXP);
     vim_memset(reg_endzp, 0, sizeof(char_u *) * NSUBEXP);
 }
 need_clear_zsubexpr = FALSE;
    }
}
