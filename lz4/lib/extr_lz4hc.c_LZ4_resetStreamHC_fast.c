
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uptrval ;
struct TYPE_7__ {int * dictCtx; int * base; int end; scalar_t__ dirty; } ;
struct TYPE_8__ {TYPE_1__ internal_donotuse; } ;
typedef TYPE_2__ LZ4_streamHC_t ;


 int DEBUGLOG (int,char*,TYPE_2__*,int) ;
 int LZ4_initStreamHC (TYPE_2__*,int) ;
 int LZ4_setCompressionLevel (TYPE_2__*,int) ;

void LZ4_resetStreamHC_fast (LZ4_streamHC_t* LZ4_streamHCPtr, int compressionLevel)
{
    DEBUGLOG(4, "LZ4_resetStreamHC_fast(%p, %d)", LZ4_streamHCPtr, compressionLevel);
    if (LZ4_streamHCPtr->internal_donotuse.dirty) {
        LZ4_initStreamHC(LZ4_streamHCPtr, sizeof(*LZ4_streamHCPtr));
    } else {

        LZ4_streamHCPtr->internal_donotuse.end -= (uptrval)LZ4_streamHCPtr->internal_donotuse.base;
        LZ4_streamHCPtr->internal_donotuse.base = ((void*)0);
        LZ4_streamHCPtr->internal_donotuse.dictCtx = ((void*)0);
    }
    LZ4_setCompressionLevel(LZ4_streamHCPtr, compressionLevel);
}
