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
typedef  int /*<<< orphan*/  LED_TYPE ;

/* Variables and functions */
 int col ; 
 int /*<<< orphan*/ * led ; 
 scalar_t__ rc ; 
 int rgb ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int right ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ speed ; 
 int t ; 

void FUNC2(void) {
  if (rgb==0) return; // Do nothing each tick right away if neither of animations enabled
  if (rgb==1) {
    if (rc == 0) {
      rc = speed;
      for(int i = 0; i<6; i++) {
        FUNC1(42*((t+i)%6), 255, 255, (LED_TYPE *)&led[i]);
      }
      FUNC0();
      t++; t = t % 6;
    }
  } else if (rgb==2) {
    if (rc == 0) {
      rc = speed;
      col = (col + 1) % 36;
      for (int i = 0; i<6; i++) {
        if (i==t)
          FUNC1(42*(((col-1)/6)%6), 255, 255, (LED_TYPE *)&led[(right ? t : 5-t)]);
        else
          FUNC1(0, 0, 0, (LED_TYPE *)&led[right ? i : 5-i]);
      }
      FUNC0();
      t++; t = t % 6;
      if (t == 0) right = !right;
    }
  }
  rc--;
}