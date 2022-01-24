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
struct vo_w32_state {int /*<<< orphan*/  input_ctx; } ;
typedef  int UINT ;

/* Variables and functions */
 int KF_EXTENDED ; 
 int KF_REPEAT ; 
 int MP_KEY_STATE_DOWN ; 
 int FUNC0 (struct vo_w32_state*,int,int) ; 
 int FUNC1 (struct vo_w32_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct vo_w32_state *w32, UINT vkey, UINT scancode)
{
    // Ignore key repeat
    if (scancode & KF_REPEAT)
        return;

    int mpkey = FUNC3(vkey, scancode & KF_EXTENDED);
    if (!mpkey) {
        mpkey = FUNC0(w32, vkey, scancode & (0xff | KF_EXTENDED));
        if (!mpkey)
            return;
    }

    FUNC2(w32->input_ctx, mpkey | FUNC1(w32) | MP_KEY_STATE_DOWN);
}