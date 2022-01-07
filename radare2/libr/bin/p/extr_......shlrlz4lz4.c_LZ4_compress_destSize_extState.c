
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int internal_donotuse; } ;
typedef TYPE_1__ LZ4_stream_t ;


 int LZ4_64Klimit ;
 int LZ4_compressBound (int) ;
 int LZ4_compress_destSize_generic (int *,char const*,char*,int*,int,int ) ;
 int LZ4_compress_fast_extState (TYPE_1__*,char const*,char*,int,int,int) ;
 int LZ4_resetStream (TYPE_1__*) ;
 int byPtr ;
 int byut16 ;
 int byut32 ;

__attribute__((used)) static int LZ4_compress_destSize_extState (LZ4_stream_t* state, const char* src, char* dst, int* srcSizePtr, int targetDstSize) {
 LZ4_resetStream (state);
 if (targetDstSize >= LZ4_compressBound(*srcSizePtr)) {
  return LZ4_compress_fast_extState(state, src, dst, *srcSizePtr, targetDstSize, 1);
 }
 if (*srcSizePtr < LZ4_64Klimit) {
  return LZ4_compress_destSize_generic(&state->internal_donotuse, src, dst, srcSizePtr, targetDstSize, byut16);
 }
 return LZ4_compress_destSize_generic(&state->internal_donotuse, src, dst, srcSizePtr, targetDstSize, sizeof(void*)==8 ? byut32 : byPtr);
}
