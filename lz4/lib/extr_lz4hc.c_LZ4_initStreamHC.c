
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ptrdiff_t ;
struct TYPE_6__ {scalar_t__ dirty; scalar_t__ favorDecSpeed; int * dictCtx; int * base; int const* end; } ;
struct TYPE_7__ {TYPE_1__ internal_donotuse; } ;
typedef TYPE_2__ LZ4_streamHC_t ;
typedef int LZ4HC_CCtx_internal ;
typedef int BYTE ;


 int DEBUGLOG (int,char*,TYPE_2__* const,unsigned int) ;
 int LZ4HC_CLEVEL_DEFAULT ;
 int LZ4_STATIC_ASSERT (int) ;
 int LZ4_STREAMHCSIZE ;
 int LZ4_setCompressionLevel (TYPE_2__* const,int ) ;
 int LZ4_streamHC_t_alignment () ;

LZ4_streamHC_t* LZ4_initStreamHC (void* buffer, size_t size)
{
    LZ4_streamHC_t* const LZ4_streamHCPtr = (LZ4_streamHC_t*)buffer;
    if (buffer == ((void*)0)) return ((void*)0);
    if (size < sizeof(LZ4_streamHC_t)) return ((void*)0);



    if (((size_t)buffer) & (LZ4_streamHC_t_alignment() - 1)) return ((void*)0);


    LZ4_STATIC_ASSERT(sizeof(LZ4HC_CCtx_internal) <= LZ4_STREAMHCSIZE);
    DEBUGLOG(4, "LZ4_initStreamHC(%p, %u)", LZ4_streamHCPtr, (unsigned)size);

    LZ4_streamHCPtr->internal_donotuse.end = (const BYTE *)(ptrdiff_t)-1;
    LZ4_streamHCPtr->internal_donotuse.base = ((void*)0);
    LZ4_streamHCPtr->internal_donotuse.dictCtx = ((void*)0);
    LZ4_streamHCPtr->internal_donotuse.favorDecSpeed = 0;
    LZ4_streamHCPtr->internal_donotuse.dirty = 0;
    LZ4_setCompressionLevel(LZ4_streamHCPtr, LZ4HC_CLEVEL_DEFAULT);
    return LZ4_streamHCPtr;
}
