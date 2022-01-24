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
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FALSE ; 

BOOL FUNC2(HCRYPTKEY hKey, PBYTE data, DWORD nbBlock, BOOL encrypt)
{
	nbBlock *= 16;
	return (encrypt ? FUNC1(hKey, 0, FALSE, 0, data, &nbBlock, nbBlock) : FUNC0(hKey, 0, FALSE, 0, data, &nbBlock));
}