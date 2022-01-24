#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
struct TYPE_21__ {scalar_t__ size; } ;
struct TYPE_20__ {scalar_t__ offset; } ;
struct TYPE_19__ {scalar_t__ length; scalar_t__ offset; int name_id; int platform_id; int encoding_id; int language_id; } ;
struct TYPE_17__ {int format; int count; int string_offset; TYPE_3__* name_records; } ;
struct TYPE_18__ {int /*<<< orphan*/  stream; scalar_t__ tag_name; scalar_t__ tag_name2; TYPE_1__ name_tbl; } ;
typedef  int HPDF_UINT16 ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_2__* HPDF_TTFontDefAttr ;
typedef  TYPE_3__ HPDF_TTF_NameRecord ;
typedef  TYPE_4__ HPDF_TTFTable ;
typedef  TYPE_5__* HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_6__* HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_6__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 int HPDF_STREAM_BUF_SIZ ; 
 int /*<<< orphan*/  HPDF_STREAM_FILTER_NONE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_5__*,int) ; 

__attribute__((used)) static HPDF_STATUS
FUNC10  (HPDF_FontDef   fontdef,
               HPDF_Stream    stream)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_TTFTable *tbl = FUNC0 (fontdef, "name");
    HPDF_STATUS ret = HPDF_OK;
    HPDF_UINT i;
    HPDF_TTF_NameRecord *name_rec;
    HPDF_Stream tmp_stream = FUNC2 (fontdef->mmgr,
                HPDF_STREAM_BUF_SIZ);

    FUNC3 ((" RecreateName\n"));

    if (!tmp_stream)
        return FUNC1 (fontdef->error);

    ret += FUNC9 (stream, attr->name_tbl.format);
    ret += FUNC9 (stream, attr->name_tbl.count);
    ret += FUNC9 (stream, attr->name_tbl.string_offset);

    if (ret != HPDF_OK) {
        FUNC4 (tmp_stream);
        return FUNC1 (fontdef->error);
    }

    name_rec = attr->name_tbl.name_records;
    for (i = 0; i < attr->name_tbl.count; i++) {
        HPDF_UINT name_len = name_rec->length;
        HPDF_BYTE buf[HPDF_STREAM_BUF_SIZ];
        HPDF_UINT tmp_len = name_len;
        HPDF_UINT offset = tbl->offset + attr->name_tbl.string_offset +
                name_rec->offset;
        HPDF_UINT rec_offset = tmp_stream->size;

        /* add suffix to font-name. */
        if (name_rec->name_id == 1 || name_rec->name_id == 4) {
            if (name_rec->platform_id == 0 || name_rec->platform_id == 3) {
                ret += FUNC7 (tmp_stream, (HPDF_BYTE *)attr->tag_name2,
                        sizeof(attr->tag_name2));
                name_len += sizeof(attr->tag_name2);
            } else {
                ret += FUNC7 (tmp_stream, (HPDF_BYTE *)attr->tag_name,
                        sizeof(attr->tag_name));
                name_len += sizeof(attr->tag_name);
            }
        }

        ret += FUNC9 (stream, name_rec->platform_id);
        ret += FUNC9 (stream, name_rec->encoding_id);
        ret += FUNC9 (stream, name_rec->language_id);
        ret += FUNC9 (stream, name_rec->name_id);
        ret += FUNC9 (stream, (HPDF_UINT16)name_len);
        ret += FUNC9 (stream, (HPDF_UINT16)rec_offset);

        ret += FUNC6 (attr->stream, offset, HPDF_SEEK_SET);

        if (ret != HPDF_OK) {
            FUNC4 (tmp_stream);
            return FUNC1 (fontdef->error);
        }

        while (tmp_len > 0) {
            HPDF_UINT len = (tmp_len > HPDF_STREAM_BUF_SIZ) ?
                    HPDF_STREAM_BUF_SIZ : tmp_len;

            if ((ret = FUNC5 (attr->stream, buf, &len)) != HPDF_OK) {
                FUNC4 (tmp_stream);
                return ret;
            }

            if ((ret = FUNC7 (tmp_stream, buf, len)) != HPDF_OK) {
                FUNC4 (tmp_stream);
                return ret;
            }

            tmp_len -= len;
        }

        FUNC3((" RecreateNAME name_rec[%u] platform_id=%u "
                        "encoding_id=%u language_id=%u name_rec->name_id=%u "
                        "length=%u offset=%u\n", i, name_rec->platform_id,
                        name_rec->encoding_id, name_rec->language_id,
                        name_rec->name_id, name_len, rec_offset));

        name_rec++;
    }

    ret = FUNC8 (tmp_stream, stream,
                HPDF_STREAM_FILTER_NONE, NULL);

    FUNC4 (tmp_stream);

    return ret;
}