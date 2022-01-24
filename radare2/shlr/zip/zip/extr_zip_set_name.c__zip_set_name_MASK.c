#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zip_uint8_t ;
typedef  scalar_t__ zip_uint64_t ;
typedef  int /*<<< orphan*/  zip_uint16_t ;
typedef  scalar_t__ zip_int64_t ;
typedef  int zip_flags_t ;
struct zip_string {int /*<<< orphan*/  encoding; } ;
struct zip_entry {TYPE_1__* changes; TYPE_3__* orig; } ;
struct zip {scalar_t__ nentry; int /*<<< orphan*/  error; struct zip_entry* entry; } ;
struct TYPE_5__ {int /*<<< orphan*/  filename; } ;
struct TYPE_4__ {int /*<<< orphan*/  changed; struct zip_string* filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_DIRENT_FILENAME ; 
 int /*<<< orphan*/  ZIP_ENCODING_UNKNOWN ; 
 scalar_t__ ZIP_ENCODING_UTF8_GUESSED ; 
 int /*<<< orphan*/  ZIP_ENCODING_UTF8_KNOWN ; 
 int /*<<< orphan*/  ZIP_ER_EXISTS ; 
 int /*<<< orphan*/  ZIP_ER_INVAL ; 
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int /*<<< orphan*/  ZIP_ER_RDONLY ; 
 int ZIP_FL_ENCODING_ALL ; 
 int ZIP_FL_ENC_GUESS ; 
 scalar_t__ FUNC0 (struct zip*) ; 
 TYPE_1__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct zip_string*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct zip*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct zip_string*) ; 
 int /*<<< orphan*/  FUNC7 (struct zip_string*) ; 
 struct zip_string* FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*) ; 

int
FUNC10(struct zip *za, zip_uint64_t idx, const char *name, zip_flags_t flags)
{
    struct zip_entry *e;
    struct zip_string *str;
    int changed;
    zip_int64_t i;

    if (idx >= za->nentry) {
	FUNC3(&za->error, ZIP_ER_INVAL, 0);
	return -1;
    }

    if (FUNC0(za)) {
	FUNC3(&za->error, ZIP_ER_RDONLY, 0);
	return -1;
    }

    if (name && FUNC9(name) > 0) {
        /* XXX: check for string too long */
	if ((str=FUNC8((const zip_uint8_t *)name, (zip_uint16_t)FUNC9(name), flags, &za->error)) == NULL)
	    return -1;
	if ((flags & ZIP_FL_ENCODING_ALL) == ZIP_FL_ENC_GUESS && FUNC4(str, ZIP_ENCODING_UNKNOWN) == ZIP_ENCODING_UTF8_GUESSED)
	    str->encoding = ZIP_ENCODING_UTF8_KNOWN;
    }
    else
	str = NULL;

    /* XXX: encoding flags needed for CP437? */
    if ((i=FUNC5(za, name, 0, NULL)) >= 0 && (zip_uint64_t)i != idx) {
	FUNC7(str);
	FUNC3(&za->error, ZIP_ER_EXISTS, 0);
	return -1;
    }

    /* no effective name change */
    if (i>=0 && (zip_uint64_t)i == idx) {
	FUNC7(str);
	return 0;
    }

    e = za->entry+idx;

    if (e->changes) {
	FUNC7(e->changes->filename);
	e->changes->filename = NULL;
	e->changes->changed &= ~ZIP_DIRENT_FILENAME;
    }

    if (e->orig)
	changed = !FUNC6(e->orig->filename, str);
    else
	changed = 1;
	
    if (changed) {
        if (e->changes == NULL) {
            if ((e->changes=FUNC1(e->orig)) == NULL) {
                FUNC3(&za->error, ZIP_ER_MEMORY, 0);
		FUNC7(str);
                return -1;
            }
        }
        e->changes->filename = str;
        e->changes->changed |= ZIP_DIRENT_FILENAME;
    }
    else {
	FUNC7(str);
	if (e->changes && e->changes->changed == 0) {
	    FUNC2(e->changes);
	    e->changes = NULL;
	}
    }

    return 0;
}