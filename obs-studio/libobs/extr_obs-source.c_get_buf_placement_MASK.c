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
typedef  unsigned long long uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  audio_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline size_t FUNC1(audio_t *audio, uint64_t offset)
{
	uint32_t sample_rate = FUNC0(audio);
	return (size_t)(offset * (uint64_t)sample_rate / 1000000000ULL);
}