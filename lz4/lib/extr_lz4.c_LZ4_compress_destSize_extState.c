
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uptrval ;
typedef int tableType_t ;
struct TYPE_5__ {int internal_donotuse; } ;
typedef TYPE_1__ LZ4_stream_t ;


 int LZ4_64Klimit ;
 scalar_t__ LZ4_DISTANCE_MAX ;
 int LZ4_compressBound (int) ;
 int LZ4_compress_fast_extState (TYPE_1__*,char const*,char*,int,int,int) ;
 int LZ4_compress_generic (int *,char const*,char*,int,int*,int,int ,int const,int ,int ,int) ;
 void* LZ4_initStream (TYPE_1__*,int) ;
 int assert (int ) ;
 int byPtr ;
 int const byU16 ;
 int byU32 ;
 int fillOutput ;
 int noDict ;
 int noDictIssue ;

__attribute__((used)) static int LZ4_compress_destSize_extState (LZ4_stream_t* state, const char* src, char* dst, int* srcSizePtr, int targetDstSize)
{
    void* const s = LZ4_initStream(state, sizeof (*state));
    assert(s != ((void*)0)); (void)s;

    if (targetDstSize >= LZ4_compressBound(*srcSizePtr)) {
        return LZ4_compress_fast_extState(state, src, dst, *srcSizePtr, targetDstSize, 1);
    } else {
        if (*srcSizePtr < LZ4_64Klimit) {
            return LZ4_compress_generic(&state->internal_donotuse, src, dst, *srcSizePtr, srcSizePtr, targetDstSize, fillOutput, byU16, noDict, noDictIssue, 1);
        } else {
            tableType_t const addrMode = ((sizeof(void*)==4) && ((uptrval)src > LZ4_DISTANCE_MAX)) ? byPtr : byU32;
            return LZ4_compress_generic(&state->internal_donotuse, src, dst, *srcSizePtr, srcSizePtr, targetDstSize, fillOutput, addrMode, noDict, noDictIssue, 1);
    } }
}
