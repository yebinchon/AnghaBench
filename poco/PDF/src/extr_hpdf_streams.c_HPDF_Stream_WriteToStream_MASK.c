#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  error; int /*<<< orphan*/  write_fn; } ;
typedef  int HPDF_UINT ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  scalar_t__ HPDF_Encrypt ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;
typedef  scalar_t__ HPDF_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_FALSE ; 
 scalar_t__ HPDF_INVALID_OBJECT ; 
 scalar_t__ HPDF_NOERROR ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 int HPDF_STREAM_BUF_SIZ ; 
 scalar_t__ HPDF_STREAM_EOF ; 
 int HPDF_STREAM_FILTER_FLATE_DECODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,TYPE_1__*,scalar_t__) ; 
 scalar_t__ HPDF_THIS_FUNC_WAS_SKIPPED ; 
 scalar_t__ HPDF_TRUE ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

HPDF_STATUS
FUNC10  (HPDF_Stream  src,
                            HPDF_Stream  dst,
                            HPDF_UINT    filter,
                            HPDF_Encrypt  e)
{
    HPDF_STATUS ret;
    HPDF_BYTE buf[HPDF_STREAM_BUF_SIZ];
    HPDF_BYTE ebuf[HPDF_STREAM_BUF_SIZ];
    HPDF_BOOL flg;

    FUNC2((" HPDF_Stream_WriteToStream\n"));
    FUNC9 (filter);

    if (!dst || !(dst->write_fn)) {
        FUNC3 (src->error, HPDF_INVALID_OBJECT, 0);
        return HPDF_INVALID_OBJECT;
    }

    if (FUNC1 (src->error) != HPDF_NOERROR ||
            FUNC1 (dst->error) != HPDF_NOERROR)
        return HPDF_THIS_FUNC_WAS_SKIPPED;

    /* initialize input stream */
    if (FUNC6 (src) == 0)
        return HPDF_OK;

#ifndef LIBHPDF_HAVE_NOZLIB
    if (filter & HPDF_STREAM_FILTER_FLATE_DECODE)
        return FUNC8 (src, dst, e);
#endif /* LIBHPDF_HAVE_NOZLIB */

    ret = FUNC5 (src, 0, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    flg = HPDF_FALSE;
    for (;;) {
        HPDF_UINT size = HPDF_STREAM_BUF_SIZ;

        ret = FUNC4 (src, buf, &size);

        if (ret != HPDF_OK) {
            if (ret == HPDF_STREAM_EOF) {
                flg = HPDF_TRUE;
                if (size == 0)
                    break;
            } else {
                return ret;
            }
        }

        if (e) {
            FUNC0 (e, buf, ebuf, size);
            ret = FUNC7(dst, ebuf, size);
        } else {
            ret = FUNC7(dst, buf, size);
        }

        if (ret != HPDF_OK)
            return ret;

        if (flg)
            break;
    }

    return HPDF_OK;
}