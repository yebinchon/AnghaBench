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
typedef  int /*<<< orphan*/  LPDIRECTSOUND3DBUFFER ;
typedef  int /*<<< orphan*/  IDirectSound3DBufferImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 

HRESULT FUNC2(
    IDirectSound3DBufferImpl *pds3db)
{
    FUNC1("(%p)\n",pds3db);

    while (FUNC0((LPDIRECTSOUND3DBUFFER)pds3db) > 0);

    return S_OK;
}