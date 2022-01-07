
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int LZ4_decompress_generic (char const*,char*,int,int,int ,int ,int ,int ,int *,int const*,int) ;
 int endOnInputSize ;
 int full ;
 int usingExtDict ;

int LZ4_decompress_safe_forceExtDict(const char* source, char* dest, int compressedSize, int maxOutputSize, const char* dictStart, int dictSize) {
 return LZ4_decompress_generic(source, dest, compressedSize, maxOutputSize, endOnInputSize, full, 0, usingExtDict, (ut8*)dest, (const ut8*)dictStart, dictSize);
}
