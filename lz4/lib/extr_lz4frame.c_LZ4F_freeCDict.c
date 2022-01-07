
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HCCtx; int fastCtx; struct TYPE_4__* dictContent; } ;
typedef TYPE_1__ LZ4F_CDict ;


 int FREEMEM (TYPE_1__*) ;
 int LZ4_freeStream (int ) ;
 int LZ4_freeStreamHC (int ) ;

void LZ4F_freeCDict(LZ4F_CDict* cdict)
{
    if (cdict==((void*)0)) return;
    FREEMEM(cdict->dictContent);
    LZ4_freeStream(cdict->fastCtx);
    LZ4_freeStreamHC(cdict->HCCtx);
    FREEMEM(cdict);
}
