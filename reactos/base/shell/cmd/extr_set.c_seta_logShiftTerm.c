
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;
typedef int INT ;
typedef int BOOL ;


 int _T (char*) ;
 int seta_addTerm ;
 int seta_ltorTerm (int *,int *,int ,int ) ;

__attribute__((used)) static BOOL
seta_logShiftTerm(LPCTSTR* p_, INT* result)
{
    return seta_ltorTerm ( p_, result, _T("+-"), seta_addTerm );
}
