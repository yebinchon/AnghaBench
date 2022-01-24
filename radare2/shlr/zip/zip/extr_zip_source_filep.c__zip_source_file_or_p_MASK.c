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
typedef  int /*<<< orphan*/  zip_uint64_t ;
typedef  int zip_int64_t ;
struct zip_stat {int dummy; } ;
struct zip_source {int dummy; } ;
struct zip {int /*<<< orphan*/  error; } ;
struct read_file {int len; int closep; int /*<<< orphan*/  st; int /*<<< orphan*/ * fname; int /*<<< orphan*/  off; int /*<<< orphan*/ * f; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_ER_INVAL ; 
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct read_file*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct zip_stat const*,int) ; 
 int /*<<< orphan*/  read_file ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 struct zip_source* FUNC5 (struct zip*,int /*<<< orphan*/ ,struct read_file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct zip_source *
FUNC7(struct zip *za, const char *fname, FILE *file,
		      zip_uint64_t start, zip_int64_t len, int closep,
		      const struct zip_stat *st)
{
    struct read_file *f;
    struct zip_source *zs;

    if (file == NULL && fname == NULL) {
	FUNC0(&za->error, ZIP_ER_INVAL, 0);
	return NULL;
    }

    if ((f=(struct read_file *)FUNC2(sizeof(struct read_file))) == NULL) {
	FUNC0(&za->error, ZIP_ER_MEMORY, 0);
	return NULL;
    }

    f->fname = NULL;
    if (fname) {
	if ((f->fname=FUNC4(fname)) == NULL) {
	    FUNC0(&za->error, ZIP_ER_MEMORY, 0);
	    FUNC1(f);
	    return NULL;
	}
    }
    f->f = file;
    f->off = start;
    f->len = (len ? len : -1);
    f->closep = f->fname ? 1 : closep;
    if (st)
	FUNC3(&f->st, st, sizeof(f->st));
    else
	FUNC6(&f->st);

    if ((zs=FUNC5(za, read_file, f)) == NULL) {
	FUNC1(f);
	return NULL;
    }

    return zs;
}