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
typedef  int /*<<< orphan*/  symbol ;

/* Variables and functions */
 int HEAD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

extern void FUNC1(symbol * p) {
    if (p == NULL) return;
    FUNC0((char *) p - HEAD);
}