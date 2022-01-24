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
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int FUNC0 (struct vo_w32_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct vo_w32_state *w32, UINT cmd)
{
    if (!FUNC2(w32->input_ctx))
        return false;
    int mpkey = FUNC3(cmd);
    if (!mpkey)
        return false;
    FUNC1(w32->input_ctx, mpkey | FUNC0(w32));
    return true;
}