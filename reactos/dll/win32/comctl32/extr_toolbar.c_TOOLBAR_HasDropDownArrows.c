
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int TBSTYLE_EX_DRAWDDARROWS ;

__attribute__((used)) static inline BOOL TOOLBAR_HasDropDownArrows(DWORD exStyle)
{
    return (exStyle & TBSTYLE_EX_DRAWDDARROWS) != 0;
}
