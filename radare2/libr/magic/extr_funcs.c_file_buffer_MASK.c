#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; } ;
typedef  TYPE_1__ RMagic ;

/* Variables and functions */
 int /*<<< orphan*/  BINTEST ; 
 int R_MAGIC_MIME ; 
 int R_MAGIC_MIME_TYPE ; 
 int R_MAGIC_NO_CHECK_ASCII ; 
 int R_MAGIC_NO_CHECK_COMPRESS ; 
 int R_MAGIC_NO_CHECK_SOFT ; 
 int R_MAGIC_NO_CHECK_TAR ; 
 int FUNC0 (TYPE_1__*,void const*,size_t) ; 
 int FUNC1 (TYPE_1__*,void const*,size_t) ; 
 int FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (TYPE_1__*,void const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,char const*,void const*,size_t) ; 

int FUNC5(RMagic *ms, int fd, const char *inname, const void *buf, size_t nb) {
	int mime, m = 0;
	if (!ms) {
		return -1;
	}
	mime = ms->flags & R_MAGIC_MIME;
	if (nb == 0) {
		if ((!mime || (mime & R_MAGIC_MIME_TYPE)) &&
			FUNC2 (ms, mime ? "application/x-empty" : "empty") == -1) {
			return -1;
		}
		return 1;
	} else if (nb == 1) {
		if ((!mime || (mime & R_MAGIC_MIME_TYPE)) &&
			FUNC2 (ms, mime ? "application/octet-stream" : "very short file (no magic)") == -1) {
			return -1;
		}
		return 1;
	}

#if 0
	/* try compression stuff */
	if ((ms->flags & R_MAGIC_NO_CHECK_COMPRESS) != 0 ||
	    (m = file_zmagic(ms, fd, inname, buf, nb)) == 0) {
#endif
	    /* Check if we have a tar file */
	    if ((ms->flags & R_MAGIC_NO_CHECK_TAR) != 0 ||
		(m = FUNC1(ms, buf, nb)) == 0) {
		/* try tests in /etc/magic (or surrogate magic file) */
		if ((ms->flags & R_MAGIC_NO_CHECK_SOFT) != 0 ||
		    (m = FUNC3(ms, buf, nb, BINTEST)) == 0) {
		    /* try known keywords, check whether it is ASCII */
		    if ((ms->flags & R_MAGIC_NO_CHECK_ASCII) != 0 ||
			(m = FUNC0(ms, buf, nb)) == 0) {
			/* abandon hope, all ye who remain here */
			if ((!mime || (mime & R_MAGIC_MIME_TYPE))) {
		//		if (mime)
					FUNC2 (ms, "application/octet-stream");
				return -1;
			}
			m = 1;
		    }
		}
	    }
#if 0
	}
#endif
	return m;
}