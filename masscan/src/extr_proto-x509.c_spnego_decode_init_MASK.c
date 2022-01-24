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
struct SpnegoDecode {int /*<<< orphan*/  x509; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct SpnegoDecode*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct SpnegoDecode *x, size_t length)
{
    FUNC1(x, 0, sizeof(*x));
    
    FUNC0(x->x509, 0xFFFFFFFF, length);
}