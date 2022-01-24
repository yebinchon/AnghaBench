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
struct zip_file {int /*<<< orphan*/ * src; scalar_t__ eof; int /*<<< orphan*/  error; struct zip* za; } ;
struct zip {scalar_t__ nfile; scalar_t__ nfile_alloc; struct zip_file** file; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zip_file*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct zip_file**,unsigned int) ; 

__attribute__((used)) static struct zip_file *
FUNC5(struct zip *za)
{
    struct zip_file *zf, **file;

    if ((zf=(struct zip_file *)FUNC3(sizeof(struct zip_file))) == NULL) {
	FUNC1(&za->error, ZIP_ER_MEMORY, 0);
	return NULL;
    }
    
    if (za->nfile+1 >= za->nfile_alloc) {
	unsigned int n;
	n = za->nfile_alloc + 10;
	file = (struct zip_file **)FUNC4(za->file,
					   n*sizeof(struct zip_file *));
	if (file == NULL) {
	    FUNC1(&za->error, ZIP_ER_MEMORY, 0);
	    FUNC2(zf);
	    return NULL;
	}
	za->nfile_alloc = n;
	za->file = file;
    }

    za->file[za->nfile++] = zf;

    zf->za = za;
    FUNC0(&zf->error);
    zf->eof = 0;
    zf->src = NULL;

    return zf;
}