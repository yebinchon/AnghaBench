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
struct wrgg03_header {int /*<<< orphan*/  digest; int /*<<< orphan*/  devname; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC3(struct wrgg03_header *header, char *data, int size)
{
	MD5_CTX ctx;

	FUNC1(&ctx);

	FUNC2(&ctx, (char *)&header->offset, sizeof(header->offset));
	FUNC2(&ctx, (char *)&header->devname, sizeof(header->devname));
	FUNC2(&ctx, data, size);

	FUNC0(header->digest, &ctx);
}