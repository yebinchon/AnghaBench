#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int count; } ;
struct TYPE_6__ {int w_pos; int buf_siz; TYPE_4__* buf; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  error; scalar_t__ attr; } ;
typedef  int HPDF_UINT ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  TYPE_2__* HPDF_MemStreamAttr ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_INVALID_OBJECT ; 
 int /*<<< orphan*/  HPDF_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ HPDF_STREAM_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_BYTE*
FUNC3  (HPDF_Stream  stream,
                           HPDF_UINT    index,
                           HPDF_UINT    *length)
{
    HPDF_BYTE *ret;
    HPDF_MemStreamAttr attr;

    FUNC1((" HPDF_MemStream_GetBufPtr\n"));

    if (stream->type != HPDF_STREAM_MEMORY) {
        FUNC2 (stream->error, HPDF_INVALID_OBJECT, 0);
        return NULL;
    }

    attr = (HPDF_MemStreamAttr)stream->attr;

    ret = (HPDF_BYTE *)FUNC0 (attr->buf, index);
    if (ret == NULL) {
        FUNC2 (stream->error, HPDF_INVALID_PARAMETER, 0);
        *length = 0;
        return NULL;
    }

    *length = (attr->buf->count - 1 == index) ? attr->w_pos : attr->buf_siz;
    return ret;
}