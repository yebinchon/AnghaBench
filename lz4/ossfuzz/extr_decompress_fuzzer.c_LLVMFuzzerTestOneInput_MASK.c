#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char* const) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (size_t const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char* const,size_t,size_t const,size_t const) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char* const,size_t,size_t const,char* const,size_t const) ; 
 size_t FUNC8 (size_t const,size_t const) ; 
 int /*<<< orphan*/  FUNC9 (char* const) ; 
 scalar_t__ FUNC10 (size_t const) ; 
 int /*<<< orphan*/  FUNC11 (char* const,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char* const,int /*<<< orphan*/ ,size_t const) ; 

int FUNC13(const uint8_t *data, size_t size)
{
    FUZZ_dataProducer_t *producer = FUNC1(data, size);
    size_t const dstCapacitySeed = FUNC4(producer);
    size = FUNC3(producer);

    size_t const dstCapacity = FUNC5(dstCapacitySeed, 0, 4 * size);
    size_t const smallDictSize = size + 1;
    size_t const largeDictSize = 64 * 1024 - 1;
    size_t const dictSize = FUNC8(smallDictSize, largeDictSize);
    char* const dst = (char*)FUNC10(dstCapacity);
    char* const dict = (char*)FUNC10(dictSize + size);
    char* const largeDict = dict;
    char* const dataAfterDict = dict + dictSize;
    char* const smallDict = dataAfterDict - smallDictSize;

    FUNC0(dst);
    FUNC0(dict);

    /* Prepare the dictionary. The data doesn't matter for decompression. */
    FUNC12(dict, 0, dictSize);
    FUNC11(dataAfterDict, data, size);

    /* Decompress using each possible dictionary configuration. */
    /* No dictionary. */
    FUNC7((char const*)data, dst, size,
                                  dstCapacity, NULL, 0);
    /* Small external dictonary. */
    FUNC7((char const*)data, dst, size,
                                  dstCapacity, smallDict, smallDictSize);
    /* Large external dictionary. */
    FUNC7((char const*)data, dst, size,
                                  dstCapacity, largeDict, largeDictSize);
    /* Small prefix. */
    FUNC7((char const*)dataAfterDict, dst, size,
                                  dstCapacity, smallDict, smallDictSize);
    /* Large prefix. */
    FUNC7((char const*)data, dst, size,
                                  dstCapacity, largeDict, largeDictSize);
    /* Partial decompression. */
    FUNC6((char const*)data, dst, size,
                                dstCapacity, dstCapacity);
    FUNC9(dst);
    FUNC9(dict);
    FUNC2(producer);

    return 0;
}