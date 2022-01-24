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
typedef  int /*<<< orphan*/  u8 ;
struct mtd_info {int dummy; } ;
struct ar934x_nfc {int buf_index; int buf_size; int /*<<< orphan*/ * buf; scalar_t__ read_id; scalar_t__ swap_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ar934x_nfc* FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static void
FUNC2(struct mtd_info *mtd, u8 *buf, int len)
{
	struct ar934x_nfc *nfc = FUNC1(mtd);
	int buf_index;
	int i;

	FUNC0(nfc->buf_index + len > nfc->buf_size);

	buf_index = nfc->buf_index;

	if (nfc->swap_dma || nfc->read_id) {
		for (i = 0; i < len; i++) {
			buf[i] = nfc->buf[buf_index ^ 3];
			buf_index++;
		}
	} else {
		for (i = 0; i < len; i++) {
			buf[i] = nfc->buf[buf_index];
			buf_index++;
		}
	}

	nfc->buf_index = buf_index;
}