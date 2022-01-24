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
typedef  int /*<<< orphan*/  LZ4_streamDecode_t_internal ;
typedef  int /*<<< orphan*/  LZ4_streamDecode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int LZ4_STREAMDECODESIZE ; 

LZ4_streamDecode_t* FUNC2(void)
{
    LZ4_streamDecode_t* lz4s = (LZ4_streamDecode_t*) FUNC0(sizeof(LZ4_streamDecode_t));
    FUNC1(LZ4_STREAMDECODESIZE >= sizeof(LZ4_streamDecode_t_internal));    /* A compilation error here means LZ4_STREAMDECODESIZE is not large enough */
    return lz4s;
}