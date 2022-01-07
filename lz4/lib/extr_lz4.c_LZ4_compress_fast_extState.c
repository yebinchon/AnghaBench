
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uptrval ;
typedef int tableType_t ;
struct TYPE_2__ {int internal_donotuse; } ;
typedef int LZ4_stream_t_internal ;
typedef int LZ4_stream_t ;


 int ACCELERATION_DEFAULT ;
 int LZ4_64Klimit ;
 scalar_t__ LZ4_DISTANCE_MAX ;
 int LZ4_compressBound (int) ;
 int LZ4_compress_generic (int * const,char const*,char*,int,int *,int,int ,int const,int ,int ,int) ;
 TYPE_1__* LZ4_initStream (void*,int) ;
 int assert (int ) ;
 int byPtr ;
 int const byU16 ;
 int byU32 ;
 int limitedOutput ;
 int noDict ;
 int noDictIssue ;
 int notLimited ;

int LZ4_compress_fast_extState(void* state, const char* source, char* dest, int inputSize, int maxOutputSize, int acceleration)
{
    LZ4_stream_t_internal* const ctx = & LZ4_initStream(state, sizeof(LZ4_stream_t)) -> internal_donotuse;
    assert(ctx != ((void*)0));
    if (acceleration < 1) acceleration = ACCELERATION_DEFAULT;
    if (maxOutputSize >= LZ4_compressBound(inputSize)) {
        if (inputSize < LZ4_64Klimit) {
            return LZ4_compress_generic(ctx, source, dest, inputSize, ((void*)0), 0, notLimited, byU16, noDict, noDictIssue, acceleration);
        } else {
            const tableType_t tableType = ((sizeof(void*)==4) && ((uptrval)source > LZ4_DISTANCE_MAX)) ? byPtr : byU32;
            return LZ4_compress_generic(ctx, source, dest, inputSize, ((void*)0), 0, notLimited, tableType, noDict, noDictIssue, acceleration);
        }
    } else {
        if (inputSize < LZ4_64Klimit) {
            return LZ4_compress_generic(ctx, source, dest, inputSize, ((void*)0), maxOutputSize, limitedOutput, byU16, noDict, noDictIssue, acceleration);
        } else {
            const tableType_t tableType = ((sizeof(void*)==4) && ((uptrval)source > LZ4_DISTANCE_MAX)) ? byPtr : byU32;
            return LZ4_compress_generic(ctx, source, dest, inputSize, ((void*)0), maxOutputSize, limitedOutput, tableType, noDict, noDictIssue, acceleration);
        }
    }
}
