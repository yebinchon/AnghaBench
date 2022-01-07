
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int prefs ;
typedef int options ;
typedef scalar_t__ U64 ;
struct TYPE_10__ {scalar_t__ contentSize; int blockMode; int blockSizeID; } ;
struct TYPE_11__ {int autoFlush; int stableSrc; TYPE_1__ frameInfo; } ;
typedef TYPE_2__ LZ4F_preferences_t ;
typedef TYPE_2__ LZ4F_compressOptions_t ;
typedef int LZ4F_cctx ;
typedef int LZ4F_CDict ;
typedef int BYTE ;


 int LZ4F_ERROR_dstMaxSize_tooSmall ;
 int LZ4F_blockIndependent ;
 size_t LZ4F_compressBegin_usingCDict (int *,void*,size_t,int const*,TYPE_2__*) ;
 size_t LZ4F_compressEnd (int *,int *,size_t,TYPE_2__*) ;
 size_t LZ4F_compressFrameBound (size_t,TYPE_2__*) ;
 size_t LZ4F_compressUpdate (int *,int *,size_t,void const*,size_t,TYPE_2__*) ;
 size_t LZ4F_getBlockSize (int ) ;
 scalar_t__ LZ4F_isError (size_t const) ;
 int LZ4F_optimalBSID (int ,size_t) ;
 int MEM_INIT (TYPE_2__*,int ,int) ;
 int assert (int) ;
 size_t err0r (int ) ;

size_t LZ4F_compressFrame_usingCDict(LZ4F_cctx* cctx,
                                     void* dstBuffer, size_t dstCapacity,
                               const void* srcBuffer, size_t srcSize,
                               const LZ4F_CDict* cdict,
                               const LZ4F_preferences_t* preferencesPtr)
{
    LZ4F_preferences_t prefs;
    LZ4F_compressOptions_t options;
    BYTE* const dstStart = (BYTE*) dstBuffer;
    BYTE* dstPtr = dstStart;
    BYTE* const dstEnd = dstStart + dstCapacity;

    if (preferencesPtr!=((void*)0))
        prefs = *preferencesPtr;
    else
        MEM_INIT(&prefs, 0, sizeof(prefs));
    if (prefs.frameInfo.contentSize != 0)
        prefs.frameInfo.contentSize = (U64)srcSize;

    prefs.frameInfo.blockSizeID = LZ4F_optimalBSID(prefs.frameInfo.blockSizeID, srcSize);
    prefs.autoFlush = 1;
    if (srcSize <= LZ4F_getBlockSize(prefs.frameInfo.blockSizeID))
        prefs.frameInfo.blockMode = LZ4F_blockIndependent;

    MEM_INIT(&options, 0, sizeof(options));
    options.stableSrc = 1;

    if (dstCapacity < LZ4F_compressFrameBound(srcSize, &prefs))
        return err0r(LZ4F_ERROR_dstMaxSize_tooSmall);

    { size_t const headerSize = LZ4F_compressBegin_usingCDict(cctx, dstBuffer, dstCapacity, cdict, &prefs);
      if (LZ4F_isError(headerSize)) return headerSize;
      dstPtr += headerSize; }

    assert(dstEnd >= dstPtr);
    { size_t const cSize = LZ4F_compressUpdate(cctx, dstPtr, (size_t)(dstEnd-dstPtr), srcBuffer, srcSize, &options);
      if (LZ4F_isError(cSize)) return cSize;
      dstPtr += cSize; }

    assert(dstEnd >= dstPtr);
    { size_t const tailSize = LZ4F_compressEnd(cctx, dstPtr, (size_t)(dstEnd-dstPtr), &options);
      if (LZ4F_isError(tailSize)) return tailSize;
      dstPtr += tailSize; }

    assert(dstEnd >= dstStart);
    return (size_t)(dstPtr - dstStart);
}
