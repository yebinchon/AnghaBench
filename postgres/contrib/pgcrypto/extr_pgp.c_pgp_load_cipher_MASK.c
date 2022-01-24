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
struct cipher_info {int /*<<< orphan*/  int_name; } ;
typedef  int /*<<< orphan*/  PX_Cipher ;

/* Variables and functions */
 int PXE_PGP_CORRUPT_DATA ; 
 int PXE_PGP_UNSUPPORTED_CIPHER ; 
 struct cipher_info* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

int
FUNC2(int code, PX_Cipher **res)
{
	int			err;
	const struct cipher_info *i = FUNC0(code);

	if (i == NULL)
		return PXE_PGP_CORRUPT_DATA;

	err = FUNC1(i->int_name, res);
	if (err == 0)
		return 0;

	return PXE_PGP_UNSUPPORTED_CIPHER;
}