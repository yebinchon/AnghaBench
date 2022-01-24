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
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int,char*,int,int) ; 

__attribute__((used)) static int
FUNC3(const void *va, const void *vb)
{
	Datum		a = *((const Datum *) va);
	Datum		b = *((const Datum *) vb);
	char	   *alex = FUNC0(a);
	int			alex_len = FUNC1(a);
	char	   *blex = FUNC0(b);
	int			blex_len = FUNC1(b);

	return FUNC2(alex, alex_len, blex, blex_len, false);
}