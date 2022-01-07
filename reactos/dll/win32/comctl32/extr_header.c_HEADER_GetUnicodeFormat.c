
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nNotifyFormat; } ;
typedef int LRESULT ;
typedef TYPE_1__ HEADER_INFO ;


 scalar_t__ NFR_UNICODE ;

__attribute__((used)) static inline LRESULT
HEADER_GetUnicodeFormat (const HEADER_INFO *infoPtr)
{
    return (infoPtr->nNotifyFormat == NFR_UNICODE);
}
