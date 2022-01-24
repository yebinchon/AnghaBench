#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int obj_class; } ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__ HPDF_Obj_Header ;
typedef  int /*<<< orphan*/  HPDF_Encrypt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_ERR_UNKNOWN_CLASS ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int HPDF_OCLASS_ANY ; 
#define  HPDF_OCLASS_ARRAY 136 
#define  HPDF_OCLASS_BINARY 135 
#define  HPDF_OCLASS_BOOLEAN 134 
#define  HPDF_OCLASS_DICT 133 
#define  HPDF_OCLASS_NAME 132 
#define  HPDF_OCLASS_NULL 131 
#define  HPDF_OCLASS_NUMBER 130 
#define  HPDF_OCLASS_REAL 129 
#define  HPDF_OCLASS_STRING 128 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC10  (void          *obj,
                      HPDF_Stream   stream,
                      HPDF_Encrypt  e)
{
    HPDF_Obj_Header *header;
    HPDF_STATUS ret;

    FUNC6((" HPDF_Obj_WriteValue\n"));

    header = (HPDF_Obj_Header *)obj;

    FUNC6((" HPDF_Obj_WriteValue obj=0x%08X obj_class=0x%04X\n",
            (HPDF_UINT)obj, (HPDF_UINT)header->obj_class));

    switch (header->obj_class & HPDF_OCLASS_ANY) {
        case HPDF_OCLASS_NAME:
            ret = FUNC4 (obj, stream);
            break;
        case HPDF_OCLASS_NUMBER:
            ret = FUNC5 (obj, stream);
            break;
        case HPDF_OCLASS_REAL:
            ret = FUNC7 (obj, stream);
            break;
        case HPDF_OCLASS_STRING:
            ret = FUNC9 (obj, stream, e);
            break;
        case HPDF_OCLASS_BINARY:
            ret = FUNC1 (obj, stream, e);
            break;
        case HPDF_OCLASS_ARRAY:
            ret = FUNC0 (obj, stream, e);
            break;
        case HPDF_OCLASS_DICT:
            ret = FUNC3 (obj, stream, e);
            break;
        case HPDF_OCLASS_BOOLEAN:
            ret = FUNC2 (obj, stream);
            break;
        case HPDF_OCLASS_NULL:
            ret = FUNC8 (stream, "null");
            break;
        default:
            ret = HPDF_ERR_UNKNOWN_CLASS;
    }

    return ret;
}