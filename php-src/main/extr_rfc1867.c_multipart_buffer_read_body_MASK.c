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
typedef  int /*<<< orphan*/  multipart_buffer ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FILLUNIT ; 
 char* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC3(multipart_buffer *self, size_t *len)
{
	char buf[FILLUNIT], *out=NULL;
	int total_bytes=0, read_bytes=0;

	while((read_bytes = FUNC2(self, buf, sizeof(buf), NULL))) {
		out = FUNC0(out, total_bytes + read_bytes + 1);
		FUNC1(out + total_bytes, buf, read_bytes);
		total_bytes += read_bytes;
	}

	if (out) {
		out[total_bytes] = '\0';
	}
	*len = total_bytes;

	return out;
}