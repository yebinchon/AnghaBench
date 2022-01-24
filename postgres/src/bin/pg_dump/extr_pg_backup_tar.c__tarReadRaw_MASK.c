#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t tarFHpos; } ;
typedef  TYPE_1__ lclContext ;
struct TYPE_8__ {size_t lookaheadLen; size_t lookaheadPos; size_t lookahead; scalar_t__ formatData; } ;
struct TYPE_7__ {int /*<<< orphan*/ * nFH; int /*<<< orphan*/  zFH; } ;
typedef  TYPE_2__ TAR_MEMBER ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int Z_ERRNO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (void*,size_t,size_t) ; 
 char const* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC9(ArchiveHandle *AH, void *buf, size_t len, TAR_MEMBER *th, FILE *fh)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	size_t		avail;
	size_t		used = 0;
	size_t		res = 0;

	avail = AH->lookaheadLen - AH->lookaheadPos;
	if (avail > 0)
	{
		/* We have some lookahead bytes to use */
		if (avail >= len)		/* Just use the lookahead buffer */
			used = len;
		else
			used = avail;

		/* Copy, and adjust buffer pos */
		FUNC7(buf, AH->lookahead + AH->lookaheadPos, used);
		AH->lookaheadPos += used;

		/* Adjust required length */
		len -= used;
	}

	/* Read the file if len > 0 */
	if (len > 0)
	{
		if (fh)
		{
			res = FUNC5(&((char *) buf)[used], 1, len, fh);
			if (res != len && !FUNC4(fh))
				FUNC2(fh);
		}
		else if (th)
		{
			if (th->zFH)
			{
				res = FUNC1(&((char *) buf)[used], 1, len, th->zFH);
				if (res != len && !FUNC0(th->zFH))
				{
#ifdef HAVE_LIBZ
					int			errnum;
					const char *errmsg = gzerror(th->zFH, &errnum);

					fatal("could not read from input file: %s",
						  errnum == Z_ERRNO ? strerror(errno) : errmsg);
#else
					FUNC3("could not read from input file: %s",
						  FUNC8(errno));
#endif
				}
			}
			else
			{
				res = FUNC5(&((char *) buf)[used], 1, len, th->nFH);
				if (res != len && !FUNC4(th->nFH))
					FUNC2(th->nFH);
			}
		}
		else
			FUNC3("internal error -- neither th nor fh specified in _tarReadRaw()");
	}

	ctx->tarFHpos += res + used;

	return (res + used);
}