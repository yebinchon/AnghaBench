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
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  char BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BACKUPKEY_RETRIEVE_BACKUP_KEY_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BOOL FUNC1(LPCWSTR NetworkAddr, PVOID *pDataOut, DWORD *pdwDataOut)
{
	BYTE dataIn = 'k';
	return FUNC0(NetworkAddr, &BACKUPKEY_RETRIEVE_BACKUP_KEY_GUID, &dataIn, 0, pDataOut, pdwDataOut);
}