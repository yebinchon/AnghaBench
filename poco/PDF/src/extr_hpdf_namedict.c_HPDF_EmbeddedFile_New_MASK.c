#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  filter; scalar_t__ stream; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  TYPE_1__* HPDF_String ;
typedef  scalar_t__ HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  TYPE_1__* HPDF_EmbeddedFile ;
typedef  TYPE_1__* HPDF_Dict ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_STREAM_FILTER_FLATE_DECODE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 

HPDF_EmbeddedFile
FUNC8  (HPDF_MMgr  mmgr,
                        HPDF_Xref  xref,
                        const char *file)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_Dict ef;               /* the dictionary for the embedded file: /Type /EF */
    HPDF_String name;           /* the name of the file: /F (name) */
    HPDF_Dict eff;              /* ef has an /EF <<blah>> key - this is it */
    HPDF_Dict filestream;       /* the stream that /EF <</F _ _ R>> refers to */
    HPDF_Stream stream;

    ef = FUNC3 (mmgr);
    if (!ef)
        return NULL;
    if (FUNC7 (xref, ef) != HPDF_OK)
        return NULL;

    filestream = FUNC0 (mmgr, xref);
    if (!filestream)
        return NULL;
    stream = FUNC4 (mmgr, file);
    if (!stream)
        return NULL;
    FUNC5(filestream->stream);
    filestream->stream = stream;
    filestream->filter = HPDF_STREAM_FILTER_FLATE_DECODE;

    eff = FUNC3 (mmgr);
    if (!eff)
        return NULL;

    name = FUNC6 (mmgr, file, NULL);
    if (!name)
        return NULL;

    ret += FUNC2 (ef, "Type", "F");
    ret += FUNC1 (ef, "F", name);
    ret += FUNC1 (ef, "EF", eff);
    ret += FUNC1 (eff, "F", filestream);

    if (ret != HPDF_OK)
        return NULL;

    return ef;
}