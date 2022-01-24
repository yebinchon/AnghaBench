#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  png_size_t ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_10__ {scalar_t__ error_no; } ;
struct TYPE_9__ {TYPE_5__* error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  stream; } ;
struct TYPE_8__ {scalar_t__ value; } ;
typedef  int HPDF_UINT ;
typedef  TYPE_1__* HPDF_String ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  HPDF_INVALID_PNG_IMAGE ; 
 int /*<<< orphan*/  HPDF_MISSING_FILE_NAME_ENTRY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_STRING ; 
 scalar_t__ HPDF_OK ; 
 int HPDF_PNG_BYTES_TO_CHECK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HPDF_STATUS
FUNC11  (HPDF_Dict obj)
{
    HPDF_STATUS ret;
    png_byte header[HPDF_PNG_BYTES_TO_CHECK];
    HPDF_UINT len = HPDF_PNG_BYTES_TO_CHECK;
    HPDF_Stream png_data;
    HPDF_String s;

    FUNC4 ((" PngBeforeWrite\n"));

    FUNC3(obj->stream);

    s = FUNC0 (obj, "_FILE_NAME", HPDF_OCLASS_STRING);
    if (!s)
        return FUNC5 (obj->error, HPDF_MISSING_FILE_NAME_ENTRY, 0);

    png_data = FUNC1 (obj->mmgr, (const char *)(s->value));
    if (!FUNC8 (png_data))
        return obj->error->error_no;

    FUNC2 (header, 0x00, HPDF_PNG_BYTES_TO_CHECK);
    ret = FUNC7 (png_data, header, &len);
    if (ret != HPDF_OK ||
            FUNC10 (header, (png_size_t)0, HPDF_PNG_BYTES_TO_CHECK)) {
        FUNC6(png_data);
        return FUNC5 (obj->error, HPDF_INVALID_PNG_IMAGE, 0);
    }

    if ((ret = FUNC9 (obj, NULL, png_data, HPDF_FALSE)) != HPDF_OK) {
        FUNC6(png_data);
        return ret;
    }

    FUNC6(png_data);

    return HPDF_OK;
}