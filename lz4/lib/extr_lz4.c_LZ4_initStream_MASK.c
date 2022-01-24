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
typedef  int /*<<< orphan*/  LZ4_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 

LZ4_stream_t* FUNC3 (void* buffer, size_t size)
{
    FUNC0(5, "LZ4_initStream");
    if (buffer == NULL) { return NULL; }
    if (size < sizeof(LZ4_stream_t)) { return NULL; }
#ifndef _MSC_VER  /* for some reason, Visual fails the aligment test on 32-bit x86 :
                     it reports an aligment of 8-bytes,
                     while actually aligning LZ4_stream_t on 4 bytes. */
    if (((size_t)buffer) & (FUNC1() - 1)) { return NULL; } /* alignment check */
#endif
    FUNC2(buffer, 0, sizeof(LZ4_stream_t));
    return (LZ4_stream_t*)buffer;
}