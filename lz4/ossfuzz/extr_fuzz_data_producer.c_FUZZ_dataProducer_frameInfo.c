
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ blockSizeID; void* blockChecksumFlag; void* contentChecksumFlag; void* blockMode; } ;
typedef TYPE_1__ LZ4F_frameInfo_t ;
typedef int FUZZ_dataProducer_t ;


 void* FUZZ_dataProducer_range32 (int *,scalar_t__,int ) ;
 TYPE_1__ LZ4F_INIT_FRAMEINFO ;
 int LZ4F_blockChecksumEnabled ;
 int LZ4F_blockIndependent ;
 scalar_t__ LZ4F_blockLinked ;
 int LZ4F_contentChecksumEnabled ;
 scalar_t__ LZ4F_default ;
 int LZ4F_max4MB ;
 scalar_t__ LZ4F_max64KB ;
 scalar_t__ LZ4F_noBlockChecksum ;
 scalar_t__ LZ4F_noContentChecksum ;

LZ4F_frameInfo_t FUZZ_dataProducer_frameInfo(FUZZ_dataProducer_t* producer)
{
    LZ4F_frameInfo_t info = LZ4F_INIT_FRAMEINFO;
    info.blockSizeID = FUZZ_dataProducer_range32(producer, LZ4F_max64KB - 1, LZ4F_max4MB);
    if (info.blockSizeID < LZ4F_max64KB) {
        info.blockSizeID = LZ4F_default;
    }
    info.blockMode = FUZZ_dataProducer_range32(producer, LZ4F_blockLinked, LZ4F_blockIndependent);
    info.contentChecksumFlag = FUZZ_dataProducer_range32(producer, LZ4F_noContentChecksum,
                                           LZ4F_contentChecksumEnabled);
    info.blockChecksumFlag = FUZZ_dataProducer_range32(producer, LZ4F_noBlockChecksum,
                                         LZ4F_blockChecksumEnabled);
    return info;
}
