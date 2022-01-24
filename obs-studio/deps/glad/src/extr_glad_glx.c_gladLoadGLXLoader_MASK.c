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
typedef  int /*<<< orphan*/ * PFNGLXQUERYVERSIONPROC ;
typedef  scalar_t__ (* GLADloadproc ) (char*) ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * glXQueryVersion ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC37 (scalar_t__ (*) (char*)) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__ (*) (char*)) ; 

void FUNC39(GLADloadproc load, Display *dpy, int screen) {
	glXQueryVersion = (PFNGLXQUERYVERSIONPROC)load("glXQueryVersion");
	if(glXQueryVersion == NULL) return;
	FUNC0(dpy, screen);
	FUNC34(load);
	FUNC35(load);
	FUNC36(load);
	FUNC37(load);
	FUNC38(load);

	FUNC1();
	FUNC4(load);
	FUNC24(load);
	FUNC17(load);
	FUNC23(load);
	FUNC27(load);
	FUNC14(load);
	FUNC20(load);
	FUNC30(load);
	FUNC13(load);
	FUNC31(load);
	FUNC32(load);
	FUNC7(load);
	FUNC12(load);
	FUNC6(load);
	FUNC18(load);
	FUNC15(load);
	FUNC26(load);
	FUNC5(load);
	FUNC28(load);
	FUNC10(load);
	FUNC2(load);
	FUNC22(load);
	FUNC9(load);
	FUNC19(load);
	FUNC21(load);
	FUNC25(load);
	FUNC11(load);
	FUNC8(load);
	FUNC29(load);
	FUNC16(load);
	FUNC33(load);
	FUNC3(load);

	return;
}