#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  error; int /*<<< orphan*/  attr; } ;
typedef  int /*<<< orphan*/  HPDF_UINT32 ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_INT ;
typedef  int /*<<< orphan*/  HPDF_FILEP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_FILE_IO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 

HPDF_UINT32
FUNC5  (HPDF_Stream   stream)
{
    HPDF_INT size;
    HPDF_INT ptr;
    HPDF_FILEP fp = (HPDF_FILEP)stream->attr;

    FUNC3((" HPDF_FileReader_SizeFunc\n"));

    /* save current file-pointer */
    if ((ptr = FUNC2 (fp)) < 0) {
        FUNC4 (stream->error, HPDF_FILE_IO_ERROR,
                FUNC0(fp));
        return 0;
    }

    /* move file-pointer to the end of the file */
    if (FUNC1 (fp, 0, SEEK_END) < 0) {
        FUNC4 (stream->error, HPDF_FILE_IO_ERROR,
                FUNC0(fp));
        return 0;
    }

    /* get the pointer of the end of the file */
    if ((size = FUNC2 (fp)) < 0) {
        FUNC4 (stream->error, HPDF_FILE_IO_ERROR,
                FUNC0(fp));
        return 0;
    }

    /* restore current file-pointer */
    if (FUNC1 (fp, ptr, SEEK_SET) < 0) {
        FUNC4 (stream->error, HPDF_FILE_IO_ERROR,
                FUNC0(fp));
        return 0;
    }

    return (HPDF_UINT32)size;
}