#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ buf_siz; scalar_t__ w_pos; int /*<<< orphan*/ * w_ptr; int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_MemStreamAttr ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

HPDF_STATUS
FUNC6  (HPDF_Stream      stream,
                         const HPDF_BYTE  **ptr,
                         HPDF_UINT        *count)
{
    HPDF_MemStreamAttr attr = (HPDF_MemStreamAttr)stream->attr;
    HPDF_UINT rsize = attr->buf_siz - attr->w_pos;

    FUNC5((" HPDF_MemStream_InWrite\n"));

    if (*count <= 0)
        return HPDF_OK;

    if (rsize >= *count) {
        FUNC4 (attr->w_ptr, *ptr, *count);
        attr->w_ptr += *count;
        attr->w_pos += *count;
        *count = 0;
    } else {
        if (rsize > 0) {
            FUNC4 (attr->w_ptr, *ptr, rsize);
            *ptr += rsize;
            *count -= rsize;
        }
        attr->w_ptr = (HPDF_BYTE*)FUNC2 (stream->mmgr, attr->buf_siz);

        if (attr->w_ptr == NULL)
           return FUNC0 (stream->error);

        if (FUNC3 (attr->buf, attr->w_ptr) != HPDF_OK) {
            FUNC1 (stream->mmgr, attr->w_ptr);
            attr->w_ptr = NULL;

            return FUNC0 (stream->error);
        }
        attr->w_pos = 0;
    }
    return HPDF_OK;
}