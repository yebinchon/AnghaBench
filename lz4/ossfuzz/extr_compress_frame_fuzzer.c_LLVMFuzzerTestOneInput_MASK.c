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
typedef  int /*<<< orphan*/  LZ4F_preferences_t ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char* const) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (char* const,size_t,char* const,size_t const) ; 
 size_t FUNC8 (size_t const,int /*<<< orphan*/ ,size_t const) ; 
 size_t FUNC9 (char* const,size_t const,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*) ; 
 size_t FUNC10 (size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (size_t const) ; 
 int /*<<< orphan*/  FUNC12 (char* const) ; 
 scalar_t__ FUNC13 (size_t const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,char* const,size_t) ; 

int FUNC15(const uint8_t *data, size_t size)
{
    FUZZ_dataProducer_t *producer = FUNC2(data, size);
    LZ4F_preferences_t const prefs = FUNC4(producer);
    size_t const dstCapacitySeed = FUNC6(producer);
    size = FUNC5(producer);

    size_t const compressBound = FUNC10(size, &prefs);
    size_t const dstCapacity = FUNC8(dstCapacitySeed, 0, compressBound);

    char* const dst = (char*)FUNC13(dstCapacity);
    char* const rt = (char*)FUNC13(size);

    FUNC0(dst);
    FUNC0(rt);

    /* If compression succeeds it must round trip correctly. */
    size_t const dstSize =
            FUNC9(dst, dstCapacity, data, size, &prefs);
    if (!FUNC11(dstSize)) {
        size_t const rtSize = FUNC7(rt, size, dst, dstSize);
        FUNC1(rtSize == size, "Incorrect regenerated size");
        FUNC1(!FUNC14(data, rt, size), "Corruption!");
    }

    FUNC12(dst);
    FUNC12(rt);
    FUNC3(producer);

    return 0;
}