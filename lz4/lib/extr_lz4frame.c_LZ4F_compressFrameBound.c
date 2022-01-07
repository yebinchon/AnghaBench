
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int prefs ;
struct TYPE_5__ {int autoFlush; } ;
typedef TYPE_1__ LZ4F_preferences_t ;


 size_t LZ4F_compressBound_internal (size_t,TYPE_1__*,int ) ;
 int MEM_INIT (TYPE_1__*,int ,int) ;
 size_t maxFHSize ;

size_t LZ4F_compressFrameBound(size_t srcSize, const LZ4F_preferences_t* preferencesPtr)
{
    LZ4F_preferences_t prefs;
    size_t const headerSize = maxFHSize;

    if (preferencesPtr!=((void*)0)) prefs = *preferencesPtr;
    else MEM_INIT(&prefs, 0, sizeof(prefs));
    prefs.autoFlush = 1;

    return headerSize + LZ4F_compressBound_internal(srcSize, &prefs, 0);;
}
