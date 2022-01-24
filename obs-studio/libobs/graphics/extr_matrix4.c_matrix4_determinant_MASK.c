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
struct matrix4 {int dummy; } ;

/* Variables and functions */
 float FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,struct matrix4 const*,int /*<<< orphan*/ ,int) ; 

float FUNC2(const struct matrix4 *m)
{
	const float *mf = (const float *)m;
	float det, result = 0.0f, i = 1.0f;
	float m3x3[9];
	int n;

	for (n = 0; n < 4; n++, i = -i) { // NOLINT(clang-tidy-cert-flp30-c)
		FUNC1(m3x3, m, 0, n);

		det = FUNC0(m3x3);
		result += mf[n] * det * i;
	}

	return result;
}