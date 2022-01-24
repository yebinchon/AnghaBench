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
struct mtd_info {int dummy; } ;
struct ar934x_nfc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ar934x_nfc*) ; 
 struct ar934x_nfc* FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd)
{
	struct ar934x_nfc *nfc = FUNC1(mtd);

	return FUNC0(nfc);
}