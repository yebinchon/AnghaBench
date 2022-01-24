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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 
 double FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t FUNC2(const audio_t *audio, uint64_t ts1, uint64_t ts2)
{
	double diff = FUNC1(audio, ts1) - FUNC1(audio, ts2);
	return (int64_t)FUNC0(diff);
}