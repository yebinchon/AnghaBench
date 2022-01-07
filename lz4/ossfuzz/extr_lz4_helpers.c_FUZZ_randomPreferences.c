
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {void* favorDecSpeed; void* autoFlush; scalar_t__ compressionLevel; int frameInfo; } ;
typedef TYPE_1__ LZ4F_preferences_t ;


 void* FUZZ_rand32 (int *,int ,int) ;
 int FUZZ_randomFrameInfo (int *) ;
 TYPE_1__ LZ4F_INIT_PREFERENCES ;
 int LZ4HC_CLEVEL_MAX ;

LZ4F_preferences_t FUZZ_randomPreferences(uint32_t* seed)
{
    LZ4F_preferences_t prefs = LZ4F_INIT_PREFERENCES;
    prefs.frameInfo = FUZZ_randomFrameInfo(seed);
    prefs.compressionLevel = FUZZ_rand32(seed, 0, LZ4HC_CLEVEL_MAX + 3) - 3;
    prefs.autoFlush = FUZZ_rand32(seed, 0, 1);
    prefs.favorDecSpeed = FUZZ_rand32(seed, 0, 1);
    return prefs;
}
