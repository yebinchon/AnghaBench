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
struct zip_cdir {int /*<<< orphan*/  comment; int /*<<< orphan*/  nentry_alloc; int /*<<< orphan*/  nentry; int /*<<< orphan*/  entry; } ;
struct zip {int /*<<< orphan*/  flags; int /*<<< orphan*/  ch_flags; int /*<<< orphan*/ * zp; int /*<<< orphan*/  comment_orig; int /*<<< orphan*/  nentry_alloc; int /*<<< orphan*/  nentry; int /*<<< orphan*/  entry; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int ZIP_ER_SEEK ; 
 struct zip* FUNC0 (char const*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct zip_cdir*) ; 
 int /*<<< orphan*/  FUNC2 (struct zip*,struct zip_cdir*) ; 
 struct zip_cdir* FUNC3 (int /*<<< orphan*/ *,unsigned int,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zip_cdir*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

struct zip *
FUNC8(const char *fn, FILE *fp, unsigned int flags, int *zep)
{
    struct zip *za;
    struct zip_cdir *cdir;
    off_t len;

    if (FUNC6(fp, 0, SEEK_END) < 0) {
	*zep = ZIP_ER_SEEK;
	return NULL;
    }
    len = FUNC7(fp);

    /* treat empty files as empty archives */
    if (len == 0) {
	if ((za=FUNC0(fn, flags, zep)) == NULL)
	    FUNC4(fp);
	else
	    za->zp = fp;
	return za;
    }

    cdir = FUNC3(fp, flags, zep, len);
    if (cdir == NULL) {
	FUNC4(fp);
	return NULL;
    }

    if ((za=FUNC0(fn, flags, zep)) == NULL) {
	FUNC1(cdir);
	FUNC4(fp);
	return NULL;
    }

    za->entry = cdir->entry;
    za->nentry = cdir->nentry;
    za->nentry_alloc = cdir->nentry_alloc;
    za->comment_orig = cdir->comment;
    
    za->zp = fp;

    FUNC2(za, cdir);

    za->ch_flags = za->flags;

    FUNC5(cdir);

    return za;
}