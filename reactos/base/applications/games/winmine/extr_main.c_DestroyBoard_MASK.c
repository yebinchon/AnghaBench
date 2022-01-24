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
struct TYPE_3__ {int /*<<< orphan*/  hMinesBMP; int /*<<< orphan*/  hLedsBMP; int /*<<< orphan*/  hFacesBMP; } ;
typedef  TYPE_1__ BOARD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1( BOARD *p_board )
{
    FUNC0( p_board->hFacesBMP );
    FUNC0( p_board->hLedsBMP );
    FUNC0( p_board->hMinesBMP );
}