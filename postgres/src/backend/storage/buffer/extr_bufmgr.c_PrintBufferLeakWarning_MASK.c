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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_5__ {int /*<<< orphan*/  blockNum; int /*<<< orphan*/  forkNum; int /*<<< orphan*/  rnode; } ;
struct TYPE_6__ {TYPE_1__ tag; int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ BufferDesc ;
typedef  int Buffer ;
typedef  int /*<<< orphan*/  BackendId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BUF_FLAG_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__* FUNC4 (int) ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  InvalidBackendId ; 
 int /*<<< orphan*/ * LocalRefCount ; 
 int /*<<< orphan*/  MyBackendId ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11(Buffer buffer)
{
	BufferDesc *buf;
	int32		loccount;
	char	   *path;
	BackendId	backend;
	uint32		buf_state;

	FUNC0(FUNC3(buffer));
	if (FUNC2(buffer))
	{
		buf = FUNC5(-buffer - 1);
		loccount = LocalRefCount[-buffer - 1];
		backend = MyBackendId;
	}
	else
	{
		buf = FUNC4(buffer - 1);
		loccount = FUNC6(buffer);
		backend = InvalidBackendId;
	}

	/* theoretically we should lock the bufhdr here */
	path = FUNC10(buf->tag.rnode, backend, buf->tag.forkNum);
	buf_state = FUNC9(&buf->state);
	FUNC7(WARNING,
		 "buffer refcount leak: [%03d] "
		 "(rel=%s, blockNum=%u, flags=0x%x, refcount=%u %d)",
		 buffer, path,
		 buf->tag.blockNum, buf_state & BUF_FLAG_MASK,
		 FUNC1(buf_state), loccount);
	FUNC8(path);
}