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
struct buffalo_tag3 {int dummy; } ;
struct buffalo_tag2 {int dummy; } ;
struct buffalo_tag {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ dhp ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 scalar_t__* fsize ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ifname ; 
 unsigned char* FUNC6 (int) ; 
 int num_files ; 
 int /*<<< orphan*/  ofname ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned char*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC9(void)
{
	unsigned char *buf;
	ssize_t offset;
	ssize_t hdrlen;
	ssize_t buflen;
	int err;
	int ret = -1;
	int i;

	if (dhp)
		hdrlen = sizeof(struct buffalo_tag3);
	else if (num_files == 1)
		hdrlen = sizeof(struct buffalo_tag);
	else
		hdrlen = sizeof(struct buffalo_tag2);

	buflen = hdrlen;

	for (i = 0; i < num_files; i++) {
		fsize[i] = FUNC5(ifname[i]);
		if (fsize[i] < 0) {
			FUNC0("unable to get size of '%s'", ifname[i]);
			goto out;
		}
		buflen += fsize[i];
	}

	buf = FUNC6(buflen);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto out;
	}

	offset = hdrlen;
	for (i = 0; i < num_files; i++) {
		err = FUNC7(ifname[i], buf + offset, fsize[i]);
		if (err) {
			FUNC0("unable to read from file '%s'", ifname[i]);
			goto free_buf;
		}

		offset += fsize[i];
	}

	if (dhp)
		FUNC3(buf, fsize[0] + 200);
	else if (num_files == 1)
		FUNC1(buf, buflen);
	else
		FUNC2(buf, buflen);

	err = FUNC8(ofname, buf, buflen);
	if (err) {
		FUNC0("unable to write to file '%s'", ofname);
		goto free_buf;
	}

	ret = 0;

free_buf:
	FUNC4(buf);
out:
	return ret;
}