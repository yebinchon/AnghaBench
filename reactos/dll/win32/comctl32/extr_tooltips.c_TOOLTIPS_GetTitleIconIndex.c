
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT_PTR ;
typedef size_t UINT ;
typedef scalar_t__ HICON ;


 size_t TTI_ERROR ;
 scalar_t__* hTooltipIcons ;

__attribute__((used)) static inline UINT_PTR
TOOLTIPS_GetTitleIconIndex(HICON hIcon)
{
    UINT i;
    for (i = 0; i <= TTI_ERROR; i++)
        if (hTooltipIcons[i] == hIcon)
            return i;
    return (UINT_PTR)hIcon;
}
