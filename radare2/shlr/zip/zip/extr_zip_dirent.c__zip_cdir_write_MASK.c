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
typedef  size_t zip_uint64_t ;
typedef  size_t zip_uint32_t ;
typedef  size_t zip_uint16_t ;
typedef  int zip_int64_t ;
struct zip_string {size_t length; int /*<<< orphan*/  raw; } ;
struct zip_filelist {int idx; } ;
struct zip_entry {scalar_t__ orig; scalar_t__ changes; } ;
struct zip {int /*<<< orphan*/  error; struct zip_string* comment_orig; struct zip_string* comment_changes; scalar_t__ comment_changed; struct zip_entry* entry; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOCD64LEN ; 
 int /*<<< orphan*/  EOCD64LOC_MAGIC ; 
 int /*<<< orphan*/  EOCD64_MAGIC ; 
 int /*<<< orphan*/  EOCD_MAGIC ; 
 int /*<<< orphan*/  ZIP_ER_READ ; 
 int /*<<< orphan*/  ZIP_ER_WRITE ; 
 int /*<<< orphan*/  ZIP_FL_CENTRAL ; 
 size_t ZIP_UINT16_MAX ; 
 size_t ZIP_UINT32_MAX ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

zip_int64_t
FUNC8(struct zip *za, const struct zip_filelist *filelist, zip_uint64_t survivors, FILE *fp)
{
    off_t off;
    zip_uint64_t offset, size;
    struct zip_string *comment;
    zip_uint64_t i;
    int is_zip64;
    int ret;

    if ((off=FUNC6(fp)) < 0) {
        FUNC1(&za->error, ZIP_ER_READ, errno);
        return -1;
    }
    offset = (zip_uint64_t)off;

    is_zip64 = 0;

    for (i=0; i<survivors; i++) {
	struct zip_entry *entry = za->entry+filelist[i].idx;

	if ((ret=FUNC0(entry->changes ? entry->changes : entry->orig, fp, ZIP_FL_CENTRAL, &za->error)) < 0)
	    return -1;
	if (ret)
	    is_zip64 = 1;
    }

    if ((off=FUNC6(fp)) < 0) {
        FUNC1(&za->error, ZIP_ER_READ, errno);
        return -1;
    }
    size = (zip_uint64_t)off - offset;

    if (offset > ZIP_UINT32_MAX || survivors > ZIP_UINT16_MAX)
	is_zip64 = 1;

    if (is_zip64) {
	FUNC7(EOCD64_MAGIC, 1, 4, fp);
	FUNC4(EOCD64LEN-12, fp);
	FUNC2(45, fp);
	FUNC2(45, fp);
	FUNC3(0, fp);
	FUNC3(0, fp);
	FUNC4(survivors, fp);
	FUNC4(survivors, fp);
	FUNC4(size, fp);
	FUNC4(offset, fp);

	FUNC7(EOCD64LOC_MAGIC, 1, 4, fp);
	FUNC3(0, fp);
	FUNC4(offset+size, fp);
	FUNC3(1, fp);
		    
    }

    /* clearerr(fp); */
    FUNC7(EOCD_MAGIC, 1, 4, fp);
    FUNC3(0, fp);
    FUNC2(survivors >= ZIP_UINT16_MAX ? ZIP_UINT16_MAX : (zip_uint16_t)survivors, fp);
    FUNC2(survivors >= ZIP_UINT16_MAX ? ZIP_UINT16_MAX : (zip_uint16_t)survivors, fp);
    FUNC3(size >= ZIP_UINT32_MAX ? ZIP_UINT32_MAX : (zip_uint32_t)size, fp);
    FUNC3(offset >= ZIP_UINT32_MAX ? ZIP_UINT32_MAX : (zip_uint32_t)offset, fp);

    comment = za->comment_changed ? za->comment_changes : za->comment_orig;

    FUNC2(comment ? comment->length : 0, fp);
    if (comment)
	FUNC7(comment->raw, 1, comment->length, fp);

    if (FUNC5(fp)) {
	FUNC1(&za->error, ZIP_ER_WRITE, errno);
	return -1;
    }

    return (zip_int64_t)size;
}