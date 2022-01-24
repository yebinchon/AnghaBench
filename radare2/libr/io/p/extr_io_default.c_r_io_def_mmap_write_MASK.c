#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char ut8 ;
typedef  int ut64 ;
struct TYPE_9__ {int off; } ;
struct TYPE_8__ {int obsz; int /*<<< orphan*/  fd; TYPE_1__* data; } ;
struct TYPE_7__ {int perm; int /*<<< orphan*/  filename; scalar_t__ buf; int /*<<< orphan*/  fd; scalar_t__ rawio; } ;
typedef  TYPE_1__ RIOMMapFileObj ;
typedef  TYPE_2__ RIODesc ;
typedef  TYPE_3__ RIO ;

/* Variables and functions */
 int R_PERM_W ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int const,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int const) ; 
 int FUNC12 (int /*<<< orphan*/ ,char const*,int const) ; 

__attribute__((used)) static int FUNC13(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
	FUNC10 (io && fd && fd->data && buf, -1);

	int len = -1;
	ut64 addr = io->off;
	RIOMMapFileObj *mmo = fd->data;
	if (mmo->rawio) {
		if (fd->obsz) {
			char *a_buf;
			int a_count;
			// only do aligned reads in aligned offsets
			const int aligned = fd->obsz; //512; // XXX obey fd->obsz? or it may be too slow? 128K..
			//ut64 a_off = (io->off >> 9 ) << 9; //- (io->off & aligned);
			ut64 a_off = io->off - (io->off % aligned); //(io->off >> 9 ) << 9; //- (io->off & aligned);
			int a_delta = io->off - a_off;
			if (a_delta < 0) {
				return -1;
			}
			a_count = count + (aligned - (count % aligned));
			a_buf = FUNC3 (a_count + aligned);
			if (a_buf) {
				int i;
				FUNC5 (a_buf, 0xff, a_count+aligned);
				for (i = 0; i < a_count; i += aligned) {
					(void)FUNC2 (mmo->fd, a_off + i, SEEK_SET);
					(void)FUNC11 (mmo->fd, a_buf + i, aligned);
				}
				FUNC4 (a_buf+a_delta, buf, count);
				for (i = 0; i < a_count; i += aligned) {
					(void)FUNC2 (mmo->fd, a_off + i, SEEK_SET);
					len = FUNC12 (mmo->fd, a_buf + i, aligned);
					if (len != aligned) {
						FUNC1 (a_buf);
						return len;
					}
				}
			}
			FUNC1 (a_buf);
			return count;
		}
		if (FUNC2 (mmo->fd, addr, 0) < 0) {
			return -1;
		}
		len = FUNC12 (mmo->fd, buf, count);
		return len;
	}

	if (mmo && mmo->buf) {
		if (!(mmo->perm & R_PERM_W)) {
			return -1;
		}
		if ( (count + addr > FUNC6 (mmo->buf)) || FUNC6 (mmo->buf) == 0) {
			ut64 sz = count + addr;
			FUNC8 (mmo->filename, sz);
		}
	}

	len = FUNC7 (mmo->filename, io->off, buf, count);
	if (len != count) {
		// aim to hack some corner cases?
		if (FUNC2 (fd->fd, addr, 0) < 0) {
			return -1;
		}
		len = FUNC12 (fd->fd, buf, count);
	}
	if (!FUNC9 (mmo) ) {
		FUNC0 ("io_def_mmap: failed to refresh the def_mmap backed buffer.\n");
		// XXX - not sure what needs to be done here (error handling).
	}
	return len;
}