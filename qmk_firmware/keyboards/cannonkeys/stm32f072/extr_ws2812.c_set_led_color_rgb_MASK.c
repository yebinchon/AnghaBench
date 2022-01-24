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
struct TYPE_3__ {int /*<<< orphan*/  b; int /*<<< orphan*/  r; int /*<<< orphan*/  g; } ;
typedef  TYPE_1__ LED_TYPE ;

/* Variables and functions */
 int BYTES_FOR_LED ; 
 int BYTES_FOR_LED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * txbuf ; 

void FUNC1(LED_TYPE color, int pos){
  for(int j = 0; j < 4; j++)
    txbuf[BYTES_FOR_LED*pos + j] = FUNC0(color.g, j);
  for(int j = 0; j < 4; j++)
    txbuf[BYTES_FOR_LED*pos + BYTES_FOR_LED_BYTE+j] = FUNC0(color.r, j);
  for(int j = 0; j < 4; j++)
    txbuf[BYTES_FOR_LED*pos + BYTES_FOR_LED_BYTE*2+j] = FUNC0(color.b, j);
}