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
typedef  int /*<<< orphan*/  LZ4_streamHC_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char*,int,int /*<<< orphan*/ ) ; 

int FUNC2 (LZ4_streamHC_t* ctx, const char* src, char* dst, int srcSize) { return FUNC1 (ctx, src, dst, srcSize, FUNC0(srcSize)); }