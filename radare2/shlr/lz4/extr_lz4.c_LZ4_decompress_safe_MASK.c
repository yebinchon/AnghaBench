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

/* Variables and functions */
 int FUNC0 (char const*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  endOnInputSize ; 
 int /*<<< orphan*/  full ; 
 int /*<<< orphan*/  noDict ; 

int FUNC1(const char* source, char* dest, int compressedSize, int maxDecompressedSize)
{
	return FUNC0(source, dest, compressedSize, maxDecompressedSize, endOnInputSize, full, 0, noDict, (ut8*)dest, NULL, 0);
}