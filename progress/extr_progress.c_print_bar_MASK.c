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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 

void FUNC1(float perc, int char_available)
{
int i;
int num;

num = (char_available / 100.0) * perc;

for (i = 0 ; i < num-1 ; i++) {
    FUNC0('=');
}
FUNC0('>');
i++;

for ( ; i < char_available ; i++)
    FUNC0(' ');

}