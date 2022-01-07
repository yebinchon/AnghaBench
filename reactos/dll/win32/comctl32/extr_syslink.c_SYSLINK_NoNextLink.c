
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYSLINK_INFO ;
typedef int * PDOC_ITEM ;
typedef scalar_t__ BOOL ;


 int * SYSLINK_GetFocusLink (int const*,int *) ;
 int * SYSLINK_GetNextLink (int const*,int *) ;
 int * SYSLINK_GetPrevLink (int const*,int *) ;

__attribute__((used)) static BOOL SYSLINK_NoNextLink (const SYSLINK_INFO *infoPtr, BOOL Prev)
{
    PDOC_ITEM Focus, NewFocus;

    Focus = SYSLINK_GetFocusLink(infoPtr, ((void*)0));
    if(Prev)
        NewFocus = SYSLINK_GetPrevLink(infoPtr, Focus);
    else
        NewFocus = SYSLINK_GetNextLink(infoPtr, Focus);

    return NewFocus == ((void*)0);
}
