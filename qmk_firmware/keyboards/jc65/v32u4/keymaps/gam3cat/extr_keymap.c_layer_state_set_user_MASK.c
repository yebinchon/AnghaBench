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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
#define  _AL 134 
#define  _BL 133 
#define  _CL 132 
#define  _DL 131 
#define  _FL 130 
#define  _NL 129 
#define  _WL 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

uint32_t FUNC3(uint32_t state) {
    switch (FUNC0(state)) {
       case _BL:
           FUNC1(0);
           FUNC2(180,100,255);
           break;
       case _WL:
           FUNC1(1);
           FUNC2(180,95,240);
           break;
       case _NL:
           FUNC1(1);
           FUNC2(180,90,225);
           break;
       case _DL:
           FUNC1(1);
           FUNC2(180,85,210);
           break;
       case _CL:
           FUNC1(1);
           FUNC2(180,80,195);
           break;
       case _FL:
           FUNC1(2);
           FUNC2(230,255,255);
           break;
       case _AL:
           FUNC1(3);
           FUNC2(250,255,255);
           break;
       default:
           FUNC1(0);
           FUNC2(180,100,100);
           break;
    }
    return state;
}