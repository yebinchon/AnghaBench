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
typedef  scalar_t__ UINT16 ;
typedef  int /*<<< orphan*/  PKULL_M_ACR_COMM ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ACR_MAX_LEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int*,int const*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int,int*,scalar_t__*) ; 

BOOL FUNC2(PKULL_M_ACR_COMM comm, BYTE cla, BYTE ins, BYTE p1, BYTE p2, const BYTE *pbData, const UINT16 cbData, BYTE *pbResult, UINT16 *cbResult, BOOL noLe)
{
	BOOL status = FALSE;
	BYTE buffer[ACR_MAX_LEN], idx = 4;
	//BYTE max = sizeof(buffer) - idx -
	// CHECK SIZES !
	buffer[0] = cla;
	buffer[1] = ins;
	buffer[2] = p1;
	buffer[3] = p2;

	if(cbData)
	{
		buffer[idx++] = (BYTE) cbData;
		FUNC0(buffer + idx, pbData, cbData);
		idx += cbData;
	}
	if(!noLe && *cbResult)
		buffer[idx++] = (BYTE) *cbResult;
	return FUNC1(comm, buffer, idx, pbResult, cbResult);
}