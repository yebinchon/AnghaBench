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
#define  ACCENT 131 
#define  ACCENT_CAP 130 
#define  NM_MODE 129 
#define  VI_MODE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 

uint32_t FUNC2(uint32_t state) {
    switch (FUNC0(state)) {
    case NM_MODE:
        FUNC1 (0x00,  0x66, 0x00);
        break;
    case VI_MODE:
        FUNC1 (0x66,  0x66, 0x00);
        break;
    case ACCENT:
        FUNC1 (0x7A,  0x00, 0xFF);
        break;
    case ACCENT_CAP:
        FUNC1 (0x7A,  0xFF, 0xFF);
        break;
    default: //  for any other layers, or the default layer
        FUNC1 (0xFF,  0x00, 0x00);
        break;
    }
  return state;
}