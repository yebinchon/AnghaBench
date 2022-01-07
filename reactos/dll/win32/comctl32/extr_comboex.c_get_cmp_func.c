
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmp_func_t ;
struct TYPE_3__ {int dwExtStyle; } ;
typedef TYPE_1__ COMBOEX_INFO ;


 int CBES_EX_CASESENSITIVE ;
 int lstrcmpW ;
 int lstrcmpiW ;

__attribute__((used)) static inline cmp_func_t get_cmp_func(COMBOEX_INFO const *infoPtr)
{
    return infoPtr->dwExtStyle & CBES_EX_CASESENSITIVE ? lstrcmpW : lstrcmpiW;
}
