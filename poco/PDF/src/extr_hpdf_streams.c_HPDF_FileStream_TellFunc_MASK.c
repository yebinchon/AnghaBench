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
typedef  TYPE_1__* HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_INT32 ;
typedef  int /*<<< orphan*/  HPDF_FILEP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_FILE_IO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_INT32
FUNC4  (HPDF_Stream   stream)
{
    HPDF_INT32 ret;
    HPDF_FILEP fp = (HPDF_FILEP)stream->attr;

    FUNC2((" HPDF_FileReader_TellFunc\n"));

    if ((ret = FUNC1 (fp)) < 0) {
        return FUNC3 (stream->error, HPDF_FILE_IO_ERROR,
                FUNC0(fp));
    }

    return ret;
}