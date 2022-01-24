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
struct fis_image_desc {int dummy; } ;

/* Variables and functions */
 struct fis_image_desc* MAP_FAILED ; 
 int MAP_LOCKED ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  erasesize ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct fis_image_desc* fis_desc ; 
 int /*<<< orphan*/  fis_erasesize ; 
 scalar_t__ fis_fd ; 
 struct fis_image_desc* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,int) ; 

__attribute__((used)) static struct fis_image_desc *
FUNC5(void)
{
	struct fis_image_desc *desc;

	if (fis_fd >= 0)
		FUNC1();

	fis_fd = FUNC3("FIS directory");
	if (fis_fd < 0)
		goto error;

	FUNC0(fis_fd);
	fis_fd = FUNC4("FIS directory", true);
	if (fis_fd < 0)
		goto error;

	fis_erasesize = erasesize;
	desc = FUNC2(NULL, erasesize, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_LOCKED, fis_fd, 0);
	if (desc == MAP_FAILED)
		goto error;

	fis_desc = desc;
	return desc;

error:
	FUNC1();
	return NULL;
}