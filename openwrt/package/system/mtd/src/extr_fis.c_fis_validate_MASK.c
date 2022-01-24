#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fis_part {scalar_t__ name; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int* name; } ;
struct fis_image_desc {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int fis_erasesize ; 
 struct fis_image_desc* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

int
FUNC4(struct fis_part *old, int n_old, struct fis_part *new, int n_new)
{
	struct fis_image_desc *desc;
	void *end;
	int found = 0;
	int i;

	desc = FUNC1();
	if (!desc)
		return -1;

	for (i = 0; i < n_new - 1; i++) {
		if (!new[i].size) {
			FUNC2(stderr, "FIS error: only the last partition can detect the size automatically\n");
			i = -1;
			goto done;
		}
	}

	end = desc;
	end = (char *) end + fis_erasesize;
	while ((void *) desc < end) {
		if (!desc->hdr.name[0] || (desc->hdr.name[0] == 0xff))
			break;

		for (i = 0; i < n_old; i++) {
			if (!FUNC3((char *) desc->hdr.name, (char *) old[i].name, sizeof(desc->hdr.name))) {
				found++;
				goto next;
			}
		}
next:
		desc++;
		continue;
	}

	if (found == n_old)
		i = 1;
	else
		i = -1;

done:
	FUNC0();
	return i;
}