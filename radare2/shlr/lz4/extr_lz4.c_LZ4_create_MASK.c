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
typedef  int /*<<< orphan*/  ut8 ;
typedef  void LZ4_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int) ; 

void* FUNC2 (char* inputBuffer) {
	LZ4_stream_t* lz4ds = (LZ4_stream_t*)FUNC1(8, sizeof(LZ4_stream_t));
	FUNC0 (lz4ds, (ut8*)inputBuffer);
	return lz4ds;
}