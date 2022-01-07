
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int HEADER_INFO ;


 int HEADER_SetItemBounds (int *) ;

__attribute__((used)) static LRESULT
HEADER_Size (HEADER_INFO *infoPtr)
{
    HEADER_SetItemBounds(infoPtr);
    return 0;
}
