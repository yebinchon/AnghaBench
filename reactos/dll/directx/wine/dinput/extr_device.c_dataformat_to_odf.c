
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwNumObjs; int dwObjSize; scalar_t__ rgodf; } ;
typedef int * LPDIOBJECTDATAFORMAT ;
typedef TYPE_1__* LPCDIDATAFORMAT ;
typedef scalar_t__ LPBYTE ;



__attribute__((used)) static inline LPDIOBJECTDATAFORMAT dataformat_to_odf(LPCDIDATAFORMAT df, int idx)
{
    if (idx < 0 || idx >= df->dwNumObjs) return ((void*)0);
    return (LPDIOBJECTDATAFORMAT)((LPBYTE)df->rgodf + idx * df->dwObjSize);
}
