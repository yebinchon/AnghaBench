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
struct compressionParameters {int /*<<< orphan*/  LZ4_streamHC; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,char*,int,int) ; 

__attribute__((used)) static int FUNC1(
    const struct compressionParameters* pThis,
    const char* src, char* dst,
    int srcSize, int dstSize)
{
    return FUNC0(pThis->LZ4_streamHC, src, dst, srcSize, dstSize);
}