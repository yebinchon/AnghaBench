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
typedef  int /*<<< orphan*/  u_char ;
struct jimage_header {scalar_t__ stag_magic; scalar_t__ sch2_magic; scalar_t__ stag_cmark; scalar_t__ stag_id; scalar_t__ sch2_version; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ SCH2_MAGIC ; 
 scalar_t__ SCH2_VER ; 
 scalar_t__ STAG_ID ; 
 scalar_t__ STAG_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC1(u_char *buf, size_t len)
{
	struct jimage_header *header = (struct jimage_header *)buf;

	/* default sanity checks */
	if (header->stag_magic != STAG_MAGIC) {
		FUNC0("invalid jImage stag header magic: %04x\n",
			 header->stag_magic);
		return -EINVAL;
	}
	if (header->sch2_magic != SCH2_MAGIC) {
		FUNC0("invalid jImage sch2 header magic: %04x\n",
			 header->stag_magic);
		return -EINVAL;
	}
	if (header->stag_cmark != header->stag_id) {
		FUNC0("invalid jImage stag header cmark: %02x\n",
			 header->stag_magic);
		return -EINVAL;
	}
	if (header->stag_id != STAG_ID) {
		FUNC0("invalid jImage stag header id: %02x\n",
			 header->stag_magic);
		return -EINVAL;
	}
	if (header->sch2_version != SCH2_VER) {
		FUNC0("invalid jImage sch2 header version: %02x\n",
			 header->stag_magic);
		return -EINVAL;
	}

	return 0;
}