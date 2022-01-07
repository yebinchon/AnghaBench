
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tableType_t ;
typedef int ctx ;
struct TYPE_3__ {int internal_donotuse; } ;
typedef TYPE_1__ LZ4_stream_t ;


 int LZ4_64Klimit ;
 int LZ4_compress_generic (int *,char const*,char*,int,int *,int,int ,int const,int ,int ,int) ;
 int LZ4_initStream (TYPE_1__*,int) ;
 int byPtr ;
 int const byU16 ;
 int byU32 ;
 int limitedOutput ;
 int noDict ;
 int noDictIssue ;

int LZ4_compress_fast_force(const char* src, char* dst, int srcSize, int dstCapacity, int acceleration)
{
    LZ4_stream_t ctx;
    LZ4_initStream(&ctx, sizeof(ctx));

    if (srcSize < LZ4_64Klimit) {
        return LZ4_compress_generic(&ctx.internal_donotuse, src, dst, srcSize, ((void*)0), dstCapacity, limitedOutput, byU16, noDict, noDictIssue, acceleration);
    } else {
        tableType_t const addrMode = (sizeof(void*) > 4) ? byU32 : byPtr;
        return LZ4_compress_generic(&ctx.internal_donotuse, src, dst, srcSize, ((void*)0), dstCapacity, limitedOutput, addrMode, noDict, noDictIssue, acceleration);
    }
}
