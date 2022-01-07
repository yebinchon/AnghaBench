
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (char* const) ;
 int * FUZZ_dataProducer_create (int const*,size_t) ;
 int FUZZ_dataProducer_free (int *) ;
 size_t FUZZ_dataProducer_remainingBytes (int *) ;
 size_t FUZZ_dataProducer_retrieve32 (int *) ;
 size_t FUZZ_getRange_from_uint32 (size_t const,int ,int) ;
 int LZ4_decompress_safe_partial (char const*,char* const,size_t,size_t const,size_t const) ;
 int LZ4_decompress_safe_usingDict (char const*,char* const,size_t,size_t const,char* const,size_t const) ;
 size_t MAX (size_t const,size_t const) ;
 int free (char* const) ;
 scalar_t__ malloc (size_t const) ;
 int memcpy (char* const,int const*,size_t) ;
 int memset (char* const,int ,size_t const) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
    FUZZ_dataProducer_t *producer = FUZZ_dataProducer_create(data, size);
    size_t const dstCapacitySeed = FUZZ_dataProducer_retrieve32(producer);
    size = FUZZ_dataProducer_remainingBytes(producer);

    size_t const dstCapacity = FUZZ_getRange_from_uint32(dstCapacitySeed, 0, 4 * size);
    size_t const smallDictSize = size + 1;
    size_t const largeDictSize = 64 * 1024 - 1;
    size_t const dictSize = MAX(smallDictSize, largeDictSize);
    char* const dst = (char*)malloc(dstCapacity);
    char* const dict = (char*)malloc(dictSize + size);
    char* const largeDict = dict;
    char* const dataAfterDict = dict + dictSize;
    char* const smallDict = dataAfterDict - smallDictSize;

    FUZZ_ASSERT(dst);
    FUZZ_ASSERT(dict);


    memset(dict, 0, dictSize);
    memcpy(dataAfterDict, data, size);



    LZ4_decompress_safe_usingDict((char const*)data, dst, size,
                                  dstCapacity, ((void*)0), 0);

    LZ4_decompress_safe_usingDict((char const*)data, dst, size,
                                  dstCapacity, smallDict, smallDictSize);

    LZ4_decompress_safe_usingDict((char const*)data, dst, size,
                                  dstCapacity, largeDict, largeDictSize);

    LZ4_decompress_safe_usingDict((char const*)dataAfterDict, dst, size,
                                  dstCapacity, smallDict, smallDictSize);

    LZ4_decompress_safe_usingDict((char const*)data, dst, size,
                                  dstCapacity, largeDict, largeDictSize);

    LZ4_decompress_safe_partial((char const*)data, dst, size,
                                dstCapacity, dstCapacity);
    free(dst);
    free(dict);
    FUZZ_dataProducer_free(producer);

    return 0;
}
