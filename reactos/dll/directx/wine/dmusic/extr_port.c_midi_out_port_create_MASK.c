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
typedef  int /*<<< orphan*/  IDirectMusicPort ;
typedef  int /*<<< orphan*/  IDirectMusic8Impl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DMUS_PORTPARAMS ;
typedef  int /*<<< orphan*/  DMUS_PORTCAPS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

HRESULT FUNC2(IDirectMusic8Impl *parent, DMUS_PORTPARAMS *params,
        DMUS_PORTCAPS *caps, IDirectMusicPort **port)
{
    FUNC0("(%p, %p, %p, %p)\n", parent, params, caps, port);

    return FUNC1(parent, params, caps, port);
}