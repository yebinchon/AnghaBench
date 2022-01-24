#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  right; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_9__ {int /*<<< orphan*/  hWnd; TYPE_1__ size; int /*<<< orphan*/  control; int /*<<< orphan*/  fWindowless; } ;
struct TYPE_8__ {int /*<<< orphan*/  right; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  TYPE_2__ RECTL ;
typedef  int /*<<< orphan*/  IViewObject ;
typedef  TYPE_3__ IOCS ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  DVASPECT_CONTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IViewObject ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( IOCS *This )
{
    IViewObject *view;

    if ( !This->control || !This->fWindowless )
        return;

    if ( FUNC5( FUNC1( This->control, &IID_IViewObject, (void**)&view ) ) )
    {
        HDC dc = FUNC0( This->hWnd );
        RECTL rect;

        rect.left = This->size.left; rect.top = This->size.top;
        rect.bottom = This->size.bottom; rect.right = This->size.right;

        FUNC2( view, DVASPECT_CONTENT, ~0, NULL, NULL, 0, dc, &rect, &rect, NULL, 0 );
        FUNC3( view );
        FUNC4( This->hWnd, dc );
    }
}