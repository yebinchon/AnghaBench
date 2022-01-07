
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* favorDecSpeed; void* autoFlush; scalar_t__ compressionLevel; int frameInfo; } ;
typedef TYPE_1__ LZ4F_preferences_t ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_dataProducer_frameInfo (int *) ;
 void* FUZZ_dataProducer_range32 (int *,int ,int) ;
 TYPE_1__ LZ4F_INIT_PREFERENCES ;
 int LZ4HC_CLEVEL_MAX ;

LZ4F_preferences_t FUZZ_dataProducer_preferences(FUZZ_dataProducer_t* producer)
{
    LZ4F_preferences_t prefs = LZ4F_INIT_PREFERENCES;
    prefs.frameInfo = FUZZ_dataProducer_frameInfo(producer);
    prefs.compressionLevel = FUZZ_dataProducer_range32(producer, 0, LZ4HC_CLEVEL_MAX + 3) - 3;
    prefs.autoFlush = FUZZ_dataProducer_range32(producer, 0, 1);
    prefs.favorDecSpeed = FUZZ_dataProducer_range32(producer, 0, 1);
    return prefs;
}
