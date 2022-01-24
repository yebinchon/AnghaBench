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
struct TYPE_3__ {int /*<<< orphan*/  error; scalar_t__ attr; } ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  scalar_t__ HPDF_FILEP ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HPDF_FILE_IO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC4  (HPDF_Stream      stream,
                            const HPDF_BYTE  *ptr,
                            HPDF_UINT        siz)
{
    HPDF_FILEP fp;
    HPDF_UINT ret;

    FUNC2((" HPDF_FileWriter_WriteFunc\n"));

    fp = (HPDF_FILEP)stream->attr;
    ret = FUNC1 (ptr, 1, siz, fp);

    if (ret != siz) {
        return FUNC3 (stream->error, HPDF_FILE_IO_ERROR, FUNC0(fp));
    }

    return HPDF_OK;
}