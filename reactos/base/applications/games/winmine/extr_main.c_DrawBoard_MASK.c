#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_10__ {TYPE_3__ mines_rect; TYPE_3__ face_rect; TYPE_3__ timer_rect; scalar_t__ time; TYPE_3__ counter_rect; scalar_t__ num_flags; scalar_t__ mines; } ;
struct TYPE_9__ {int /*<<< orphan*/  rcPaint; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ PAINTSTRUCT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_2__ BOARD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC4( HDC hdc, HDC hMemDC, PAINTSTRUCT *ps, BOARD *p_board )
{
    RECT tmp_rect;

    if( FUNC3( &tmp_rect, &ps->rcPaint, &p_board->counter_rect ) )
        FUNC1( hdc, hMemDC, p_board, p_board->mines - p_board->num_flags,
                  p_board->counter_rect.left,
                  p_board->counter_rect.top );

    if( FUNC3( &tmp_rect, &ps->rcPaint, &p_board->timer_rect ) )
        FUNC1( hdc, hMemDC, p_board, p_board->time,
                  p_board->timer_rect.left,
                  p_board->timer_rect.top );

    if( FUNC3( &tmp_rect, &ps->rcPaint, &p_board->face_rect ) )
        FUNC0( hdc, hMemDC, p_board );

    if( FUNC3( &tmp_rect, &ps->rcPaint, &p_board->mines_rect ) )
        FUNC2( hdc, hMemDC, p_board );
}