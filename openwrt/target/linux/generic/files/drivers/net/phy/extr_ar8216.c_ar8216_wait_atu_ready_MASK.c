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
typedef  int /*<<< orphan*/  u16 ;
struct ar8xxx_priv {int dummy; } ;

/* Variables and functions */
 int AR8216_ATU_ACTIVE ; 
 int FUNC0 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct ar8xxx_priv *priv, u16 r2, u16 r1)
{
	int timeout = 20;

	while (FUNC0(priv, r2, r1) & AR8216_ATU_ACTIVE && --timeout) {
		FUNC3(10);
		FUNC1();
	}

	if (!timeout)
		FUNC2("ar8216: timeout waiting for atu to become ready\n");
}