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
typedef  scalar_t__ XXH_endianess ;
typedef  int /*<<< orphan*/  XXH64_state_t ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC1 (void const*,size_t,unsigned long long,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  XXH_CPU_LITTLE_ENDIAN ; 
 scalar_t__ XXH_FORCE_ALIGN_CHECK ; 
 scalar_t__ XXH_FORCE_NATIVE_FORMAT ; 
 int /*<<< orphan*/  XXH_aligned ; 
 scalar_t__ XXH_bigEndian ; 
 scalar_t__ XXH_littleEndian ; 
 int /*<<< orphan*/  XXH_unaligned ; 

unsigned long long FUNC4 (const void* input, size_t len, unsigned long long seed)
{
#if 0
    /* Simple version, good for code maintenance, but unfortunately slow for small inputs */
    XXH64_state_t state;
    XXH64_reset(&state, seed);
    XXH64_update(&state, input, len);
    return XXH64_digest(&state);
#else
    XXH_endianess endian_detected = (XXH_endianess)XXH_CPU_LITTLE_ENDIAN;

    if (XXH_FORCE_ALIGN_CHECK) {
        if ((((size_t)input) & 7)==0) {  /* Input is aligned, let's leverage the speed advantage */
            if ((endian_detected==XXH_littleEndian) || XXH_FORCE_NATIVE_FORMAT)
                return FUNC1(input, len, seed, XXH_littleEndian, XXH_aligned);
            else
                return FUNC1(input, len, seed, XXH_bigEndian, XXH_aligned);
    }   }

    if ((endian_detected==XXH_littleEndian) || XXH_FORCE_NATIVE_FORMAT)
        return FUNC1(input, len, seed, XXH_littleEndian, XXH_unaligned);
    else
        return FUNC1(input, len, seed, XXH_bigEndian, XXH_unaligned);
#endif
}