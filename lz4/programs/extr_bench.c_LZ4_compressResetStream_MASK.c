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
struct compressionParameters {int /*<<< orphan*/  LZ4_dictStream; int /*<<< orphan*/  LZ4_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(
    const struct compressionParameters* pThis)
{
    FUNC1(pThis->LZ4_stream);
    FUNC0(pThis->LZ4_stream, pThis->LZ4_dictStream);
}