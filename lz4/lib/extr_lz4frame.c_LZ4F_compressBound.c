
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4F_preferences_t ;


 size_t LZ4F_compressBound_internal (size_t,int const*,size_t) ;

size_t LZ4F_compressBound(size_t srcSize, const LZ4F_preferences_t* preferencesPtr)
{
    return LZ4F_compressBound_internal(srcSize, preferencesPtr, (size_t)-1);
}
