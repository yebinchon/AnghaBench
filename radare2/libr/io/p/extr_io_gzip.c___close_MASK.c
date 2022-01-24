#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {struct TYPE_5__* buf; } ;
typedef  TYPE_1__ RIOGzip ;
typedef  TYPE_2__ RIODesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(RIODesc *fd) {
	RIOGzip *riom;
	if (!fd || !fd->data) {
		return -1;
	}
	riom = fd->data;
	FUNC0 (riom->buf);
	FUNC0 (fd->data);
	FUNC1 ("TODO: Writing changes into gzipped files is not yet supported\n");
	return 0;
}