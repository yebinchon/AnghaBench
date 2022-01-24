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
typedef  scalar_t__ zip_uint64_t ;
struct zip_error {int dummy; } ;
struct zip_cdir {void* offset; void* size; } ;
typedef  void* off_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFBIG ; 
 int EOCDLEN ; 
 unsigned int ZIP_CHECKCONS ; 
 int /*<<< orphan*/  ZIP_ER_INCONS ; 
 int /*<<< orphan*/  ZIP_ER_NOZIP ; 
 int /*<<< orphan*/  ZIP_ER_SEEK ; 
 scalar_t__ ZIP_OFF_MAX ; 
 struct zip_cdir* FUNC0 (scalar_t__,struct zip_error*) ; 
 int /*<<< orphan*/  FUNC1 (struct zip_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char const**) ; 
 scalar_t__ FUNC3 (unsigned char const**) ; 

__attribute__((used)) static struct zip_cdir *
FUNC4(const unsigned char *eocd, const unsigned char *buf, off_t buf_offset, size_t buflen,
	       unsigned int flags, struct zip_error *error)
{
    struct zip_cdir *cd;
    const unsigned char *cdp;
    zip_uint64_t i, nentry, size, offset;

    if (eocd+EOCDLEN > buf+buflen) {
	FUNC1(error, ZIP_ER_INCONS, 0);
	return NULL;
    }

    cdp = eocd + 8;

    /* number of cdir-entries on this disk */
    i = FUNC2(&cdp);
    /* number of cdir-entries */
    nentry = FUNC2(&cdp);

    if (nentry != i) {
	FUNC1(error, ZIP_ER_NOZIP, 0);
	return NULL;
    }

    size = FUNC3(&cdp);
    offset = FUNC3(&cdp);

    if (size > ZIP_OFF_MAX || offset > ZIP_OFF_MAX || offset+size > ZIP_OFF_MAX) {
        FUNC1(error, ZIP_ER_SEEK, EFBIG);
        return NULL;
    }
    
    if (offset+size > (zip_uint64_t)(buf_offset + (eocd-buf))) {
	/* cdir spans past EOCD record */
	FUNC1(error, ZIP_ER_INCONS, 0);
	return NULL;
    }

    if ((flags & ZIP_CHECKCONS) && offset+size != (zip_uint64_t)(buf_offset + (eocd-buf))) {
	FUNC1(error, ZIP_ER_INCONS, 0);
	return NULL;
    }

    if ((cd=FUNC0(nentry, error)) == NULL)
	return NULL;

    cd->size = (off_t)size;
    cd->offset = (off_t)offset;
    
    return cd;
}