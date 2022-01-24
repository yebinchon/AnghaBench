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
typedef  int zip_int64_t ;
struct zip_error {int dummy; } ;
struct zip_cdir {int dummy; } ;
typedef  size_t off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t CDBUFSIZE ; 
 scalar_t__ EFBIG ; 
 int EOCD64LOCLEN ; 
 int EOCDLEN ; 
 scalar_t__ EOCD_MAGIC ; 
 int /*<<< orphan*/  SEEK_END ; 
 unsigned int ZIP_CHECKCONS ; 
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int /*<<< orphan*/  ZIP_ER_NOZIP ; 
 int /*<<< orphan*/  ZIP_ER_READ ; 
 int /*<<< orphan*/  ZIP_ER_SEEK ; 
 int /*<<< orphan*/  FUNC0 (struct zip_cdir*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct zip_cdir*,struct zip_error*) ; 
 int /*<<< orphan*/  FUNC2 (struct zip_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (unsigned char*,size_t,unsigned char const*,int) ; 
 struct zip_cdir* FUNC4 (int /*<<< orphan*/ *,size_t,unsigned char*,unsigned char*,size_t,unsigned int,struct zip_error*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (int*,struct zip_error*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct zip_cdir *
FUNC13(FILE *fp, unsigned int flags, int *zep, off_t len)
{
    struct zip_cdir *cdir, *cdirnew;
    unsigned char *buf, *match;
    off_t buf_offset;
    size_t buflen;
    zip_int64_t a, i;
    zip_int64_t best;
    struct zip_error zerr;

    i = FUNC9(fp, -(len < CDBUFSIZE ? len : CDBUFSIZE), SEEK_END);
    if (i == -1 && errno != EFBIG) {
	/* seek before start of file on my machine */
	FUNC12(zep, NULL, ZIP_ER_SEEK);
	return NULL;
    }
    buf_offset = FUNC10(fp);
    
    /* 64k is too much for stack */
    if ((buf=(unsigned char *)FUNC11(CDBUFSIZE)) == NULL) {
	FUNC12(zep, NULL, ZIP_ER_MEMORY);
	return NULL;
    }

    FUNC5(fp);
    buflen = FUNC7(buf, 1, CDBUFSIZE, fp);

    if (FUNC6(fp)) {
	FUNC12(zep, NULL, ZIP_ER_READ);
	FUNC8(buf);
	return NULL;
    }
    
    best = -1;
    cdir = NULL;
    match = buf+ (buflen < CDBUFSIZE ? 0 : EOCD64LOCLEN);
    FUNC2(&zerr, ZIP_ER_NOZIP, 0);

    while ((match=FUNC3(match, buflen-(size_t)(match-buf)-(EOCDLEN-4),
			      (const unsigned char *)EOCD_MAGIC, 4))!=NULL) {
	/* found match -- check, if good */
	/* to avoid finding the same match all over again */
	match++;
	if ((cdirnew=FUNC4(fp, buf_offset, buf, match-1, buflen, flags,
				   &zerr)) == NULL)
	    continue;

	if (cdir) {
	    if (best <= 0)
		best = FUNC1(fp, cdir, &zerr);
	    a = FUNC1(fp, cdirnew, &zerr);
	    if (best < a) {
		FUNC0(cdir);
		cdir = cdirnew;
		best = a;
	    }
	    else
		FUNC0(cdirnew);
	}
	else {
	    cdir = cdirnew;
	    if (flags & ZIP_CHECKCONS)
		best = FUNC1(fp, cdir, &zerr);
	    else
		best = 0;
	}
	cdirnew = NULL;
    }

    FUNC8(buf);
    
    if (best < 0) {
	FUNC12(zep, &zerr, 0);
	FUNC0(cdir);
	return NULL;
    }

    return cdir;
}