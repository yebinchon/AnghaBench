#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_16__ {int size; } ;
struct TYPE_15__ {scalar_t__ start_offset; int addr; struct TYPE_15__* prev; TYPE_12__* entries; } ;
struct TYPE_14__ {int gen_no; int byte_offset; int /*<<< orphan*/  entry_typ; int /*<<< orphan*/  obj; } ;
struct TYPE_13__ {int count; } ;
typedef  TYPE_1__* HPDF_XrefEntry ;
typedef  TYPE_2__* HPDF_Xref ;
typedef  int HPDF_UINT16 ;
typedef  int HPDF_UINT ;
typedef  TYPE_3__* HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_Encrypt ;

/* Variables and functions */
 scalar_t__ HPDF_BYTE_OFFSET_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ HPDF_GEN_NO_LEN ; 
 char* FUNC1 (char*,int,char*) ; 
 char* FUNC2 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*,int) ; 
 scalar_t__ HPDF_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int HPDF_SHORT_BUF_SIZ ; 
 scalar_t__ FUNC6 (char*,char*,char*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,char*) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_3__*) ; 

HPDF_STATUS
FUNC10  (HPDF_Xref    xref,
                          HPDF_Stream  stream,
                          HPDF_Encrypt e)
{
    HPDF_STATUS ret;
    HPDF_UINT i;
    char buf[HPDF_SHORT_BUF_SIZ];
    char* pbuf;
    char* eptr = buf + HPDF_SHORT_BUF_SIZ - 1;
    HPDF_UINT str_idx;
    HPDF_Xref tmp_xref = xref;

    /* write each objects of xref to the specified stream */

    FUNC5((" HPDF_Xref_WriteToStream\n"));

    while (tmp_xref) {
        if (tmp_xref->start_offset == 0)
            str_idx = 1;
        else
            str_idx = 0;

        for (i = str_idx; i < tmp_xref->entries->count; i++) {
            HPDF_XrefEntry  entry =
                        (HPDF_XrefEntry)FUNC3 (tmp_xref->entries, i);
            HPDF_UINT obj_id = tmp_xref->start_offset + i;
            HPDF_UINT16 gen_no = entry->gen_no;

            entry->byte_offset = stream->size;

            pbuf = buf;
            pbuf = FUNC1 (pbuf, obj_id, eptr);
            *pbuf++ = ' ';
            pbuf = FUNC1 (pbuf, gen_no, eptr);
            FUNC6(pbuf, " obj\012", eptr);

            if ((ret = FUNC7 (stream, buf)) != HPDF_OK)
               return ret;

            if (e)
                FUNC0 (e, obj_id, gen_no);

            if ((ret = FUNC4 (entry->obj, stream, e)) != HPDF_OK)
                return ret;

            if ((ret = FUNC7 (stream, "\012endobj\012"))
                    != HPDF_OK)
                return ret;
       }

       tmp_xref = tmp_xref->prev;
    }

    /* start to write cross-reference table */

    tmp_xref = xref;

    while (tmp_xref) {
        tmp_xref->addr = stream->size;

        pbuf = buf;
        pbuf = (char *)FUNC6 (pbuf, "xref\012", eptr);
        pbuf = FUNC1 (pbuf, tmp_xref->start_offset, eptr);
        *pbuf++ = ' ';
        pbuf = FUNC1 (pbuf, tmp_xref->entries->count, eptr);
        FUNC6 (pbuf, "\012", eptr);
        ret = FUNC7 (stream, buf);
        if (ret != HPDF_OK)
            return ret;

        for (i = 0; i < tmp_xref->entries->count; i++) {
            HPDF_XrefEntry entry = FUNC8(tmp_xref, i);

            pbuf = buf;
            pbuf = FUNC2 (pbuf, entry->byte_offset, HPDF_BYTE_OFFSET_LEN +
                    1);
            *pbuf++ = ' ';
            pbuf = FUNC2 (pbuf, entry->gen_no, HPDF_GEN_NO_LEN + 1);
            *pbuf++ = ' ';
            *pbuf++ = entry->entry_typ;
            FUNC6 (pbuf, "\015\012", eptr); /* Acrobat 8.15 requires both \r and \n here */
            ret = FUNC7 (stream, buf);
            if (ret != HPDF_OK)
                return ret;
        }

        tmp_xref = tmp_xref->prev;
    }

    /* write trailer dictionary */
    ret = FUNC9 (xref, stream);

    return ret;
}