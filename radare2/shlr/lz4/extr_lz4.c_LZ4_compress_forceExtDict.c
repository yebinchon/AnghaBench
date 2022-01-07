
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int const ut8 ;
typedef int ut32 ;
struct TYPE_6__ {int dictSize; int currentOffset; int const* dictionary; } ;
struct TYPE_7__ {TYPE_1__ internal_donotuse; } ;
typedef TYPE_1__ LZ4_stream_t_internal ;
typedef TYPE_2__ LZ4_stream_t ;


 int LZ4_compress_generic (TYPE_1__*,char const*,char*,int,int ,int ,int ,int ,int ,int) ;
 int LZ4_renormDictT (TYPE_1__*,int const*) ;
 int byut32 ;
 int noDictIssue ;
 int notLimited ;
 int usingExtDict ;

int LZ4_compress_forceExtDict (LZ4_stream_t* LZ4_dict, const char* source, char* dest, int inputSize) {
 LZ4_stream_t_internal* streamPtr = &LZ4_dict->internal_donotuse;
 int result;
 const ut8* const dictEnd = streamPtr->dictionary + streamPtr->dictSize;

 const ut8* smallest = dictEnd;
 if (smallest > (const ut8*) source) smallest = (const ut8*) source;
 LZ4_renormDictT(streamPtr, smallest);

 result = LZ4_compress_generic(streamPtr, source, dest, inputSize, 0, notLimited, byut32, usingExtDict, noDictIssue, 1);

 streamPtr->dictionary = (const ut8*)source;
 streamPtr->dictSize = (ut32)inputSize;
 streamPtr->currentOffset += (ut32)inputSize;

 return result;
}
