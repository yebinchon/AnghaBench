#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  error; } ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/  const**,scalar_t__*) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ HPDF_THIS_FUNC_WAS_SKIPPED ; 

HPDF_STATUS
FUNC3  (HPDF_Stream      stream,
                           const HPDF_BYTE  *ptr,
                           HPDF_UINT        siz)
{
    HPDF_UINT wsiz = siz;

    FUNC2((" HPDF_MemStream_WriteFunc\n"));

    if (FUNC0 (stream->error) != 0)
        return HPDF_THIS_FUNC_WAS_SKIPPED;

    while (wsiz > 0) {
        HPDF_STATUS ret = FUNC1 (stream, &ptr, &wsiz);
        if (ret != HPDF_OK)
            return ret;
    }

    return HPDF_OK;
}