
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FUZZ_dataProducer_t ;


 size_t FUZZ_dataProducer_retrieve32 (int *) ;
 int FUZZ_getRange_from_uint32 (size_t const,int ,int ) ;

uint32_t FUZZ_dataProducer_range32(FUZZ_dataProducer_t* producer,
    uint32_t min, uint32_t max)
{
    size_t const seed = FUZZ_dataProducer_retrieve32(producer);
    return FUZZ_getRange_from_uint32(seed, min, max);
}
