#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dwHVertexOffset; int /*<<< orphan*/  dwInstructionLength; int /*<<< orphan*/  dwInstructionOffset; int /*<<< orphan*/  dwVertexCount; int /*<<< orphan*/  dwVertexOffset; int /*<<< orphan*/  dwSize; } ;
typedef  TYPE_1__ D3DEXECUTEDATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC1(const D3DEXECUTEDATA *lpData) {
    FUNC0("dwSize : %d\n", lpData->dwSize);
    FUNC0("Vertex      Offset : %d  Count  : %d\n", lpData->dwVertexOffset, lpData->dwVertexCount);
    FUNC0("Instruction Offset : %d  Length : %d\n", lpData->dwInstructionOffset, lpData->dwInstructionLength);
    FUNC0("HVertex     Offset : %d\n", lpData->dwHVertexOffset);
}