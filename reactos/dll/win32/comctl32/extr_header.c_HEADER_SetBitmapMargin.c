
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iMargin; } ;
typedef int LRESULT ;
typedef int INT ;
typedef TYPE_1__ HEADER_INFO ;



__attribute__((used)) static LRESULT
HEADER_SetBitmapMargin(HEADER_INFO *infoPtr, INT iMargin)
{
    INT oldMargin = infoPtr->iMargin;

    infoPtr->iMargin = iMargin;

    return oldMargin;
}
