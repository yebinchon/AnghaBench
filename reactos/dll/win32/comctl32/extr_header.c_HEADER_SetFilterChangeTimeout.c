
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ filter_change_timeout; } ;
typedef scalar_t__ INT ;
typedef TYPE_1__ HEADER_INFO ;



__attribute__((used)) static INT HEADER_SetFilterChangeTimeout(HEADER_INFO *infoPtr, INT timeout)
{
    INT old_timeout = infoPtr->filter_change_timeout;

    if (timeout != 0)
        infoPtr->filter_change_timeout = timeout;
    return old_timeout;
}
