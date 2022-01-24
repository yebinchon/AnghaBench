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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  unkData2; int /*<<< orphan*/  unkData1; } ;
typedef  TYPE_1__* PENC_LSAISO_DATA_BLOB ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ENC_LSAISO_DATA_BLOB ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

VOID FUNC3(PENC_LSAISO_DATA_BLOB blob, DWORD size)
{
	FUNC1("\n\t   * unkData1 : "); FUNC2(blob->unkData1, sizeof(blob->unkData1), 0);
	FUNC1("\n\t     unkData2 : "); FUNC2(blob->unkData2, sizeof(blob->unkData2), 0);
	FUNC1("\n\t     Encrypted: "); FUNC2(blob->data, size - FUNC0(ENC_LSAISO_DATA_BLOB, data), 0);
}