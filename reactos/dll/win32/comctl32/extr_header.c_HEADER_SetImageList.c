
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int himl; } ;
typedef int LRESULT ;
typedef int HIMAGELIST ;
typedef TYPE_1__ HEADER_INFO ;


 int TRACE (char*,int ) ;

__attribute__((used)) static LRESULT
HEADER_SetImageList (HEADER_INFO *infoPtr, HIMAGELIST himl)
{
    HIMAGELIST himlOld;

    TRACE("(himl %p)\n", himl);
    himlOld = infoPtr->himl;
    infoPtr->himl = himl;



    return (LRESULT)himlOld;
}
