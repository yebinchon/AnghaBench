#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {scalar_t__ h; scalar_t__ v; scalar_t__ x; scalar_t__ y; int /*<<< orphan*/  buttons; } ;
typedef  TYPE_1__ report_mouse_t ;

/* Variables and functions */
 int MATRIX_COLS ; 
 int MATRIX_ROWS ; 
 int MATRIX_ROWS_PER_SIDE ; 
 int /*<<< orphan*/  MOUSE_BTN1 ; 
 int PINE ; 
 scalar_t__ SCROLLSTEP ; 
 int TRKBTN ; 
 scalar_t__ TRKSTEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int layer_state ; 
 int /*<<< orphan*/  matrix ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ mcp23018_reset_loop ; 
 scalar_t__ mcp23018_status ; 
 TYPE_1__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  raw_matrix ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int) ; 
 scalar_t__ tbDnCnt ; 
 scalar_t__ tbLtCnt ; 
 scalar_t__ tbRtCnt ; 
 scalar_t__ tbUpCnt ; 
 int trkBtnState ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,...) ; 

uint8_t FUNC12(void) {
    // TODO: Find what is trashing interrupts
    FUNC1();

    // First we handle the mouse inputs
#ifdef BALLER
    uint8_t pBtn   = PINE & TRKBTN;

    #ifdef DEBUG_BALLER
    // Compare to previous, mod report
    if (tbUpCnt + tbDnCnt + tbLtCnt + tbRtCnt != 0)
        xprintf("U: %d D: %d L: %d R: %d B: %d\n", tbUpCnt, tbDnCnt, tbLtCnt, tbRtCnt, (trkBtnState >> 6));
    #endif

    // Modify the report
    report_mouse_t pRprt = pointing_device_get_report();

    // Scroll by default, move on layer
    if (layer_state == 0) {
		  pRprt.h += tbLtCnt * SCROLLSTEP; tbLtCnt = 0;
		  pRprt.h -= tbRtCnt * SCROLLSTEP; tbRtCnt = 0;
		  pRprt.v -= tbUpCnt * SCROLLSTEP; tbUpCnt = 0;
		  pRprt.v += tbDnCnt * SCROLLSTEP; tbDnCnt = 0;
    } else {
		  pRprt.x -= tbLtCnt * TRKSTEP * (layer_state - 1); tbLtCnt = 0;
		  pRprt.x += tbRtCnt * TRKSTEP * (layer_state - 1); tbRtCnt = 0;
		  pRprt.y -= tbUpCnt * TRKSTEP * (layer_state - 1); tbUpCnt = 0;
		  pRprt.y += tbDnCnt * TRKSTEP * (layer_state - 1); tbDnCnt = 0;
    }

#ifdef DEBUG_BALLER
    if (pRprt.x != 0 || pRprt.y != 0)
        xprintf("X: %d Y: %d\n", pRprt.x, pRprt.y);
#endif

    if ((pBtn != trkBtnState) && ((pBtn >> 6) == 0))  pRprt.buttons |= MOUSE_BTN1;
    if ((pBtn != trkBtnState) && ((pBtn >> 6) == 1))  pRprt.buttons &= ~MOUSE_BTN1;

    // Save state, push update
    if (pRprt.x != 0 || pRprt.y != 0 || pRprt.h != 0 || pRprt.v != 0 || (trkBtnState != pBtn))
        pointing_device_set_report(pRprt);

    trkBtnState = pBtn;
#endif

    // Then the keyboard
    if (mcp23018_status) {  // if there was an error
        if (++mcp23018_reset_loop == 0) {
            // if (++mcp23018_reset_loop >= 1300) {
            // since mcp23018_reset_loop is 8 bit - we'll try to reset once in 255 matrix scans
            // this will be approx bit more frequent than once per second
            FUNC7("trying to reset mcp23018\n");
            mcp23018_status = FUNC2();
            if (mcp23018_status) {
                FUNC7("left side not responding\n");
            } else {
                FUNC7("left side attached\n");
            }
        }
    }

    bool changed = false;
    for (uint8_t i = 0; i < MATRIX_ROWS_PER_SIDE; i++) {
        // select rows from left and right hands
        uint8_t left_index = i;
        uint8_t right_index = i + MATRIX_ROWS_PER_SIDE;
        FUNC8(left_index);
        FUNC8(right_index);

        // we don't need a 30us delay anymore, because selecting a
        // left-hand row requires more than 30us for i2c.

        changed |= FUNC9(left_index);
        changed |= FUNC9(right_index);

        FUNC10();
    }

    FUNC0(raw_matrix, matrix, MATRIX_ROWS, changed);
    FUNC4();

    FUNC1();

#ifdef DEBUG_MATRIX
    for (uint8_t c = 0; c < MATRIX_COLS; c++)
		for (uint8_t r = 0; r < MATRIX_ROWS; r++)
		  if (matrix_is_on(r, c)) xprintf("r:%d c:%d \n", r, c);
#endif

    return 1;
}