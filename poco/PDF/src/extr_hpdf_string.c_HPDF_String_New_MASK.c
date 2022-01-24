#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_11__ {int /*<<< orphan*/  error; } ;
struct TYPE_10__ {TYPE_2__* mmgr; scalar_t__ len; int /*<<< orphan*/ * value; int /*<<< orphan*/  encoder; int /*<<< orphan*/  error; TYPE_6__ header; } ;
typedef  int /*<<< orphan*/  HPDF_String_Rec ;
typedef  TYPE_1__* HPDF_String ;
typedef  int /*<<< orphan*/  HPDF_Obj_Header ;
typedef  TYPE_2__* HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_Encoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_OCLASS_STRING ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*) ; 

HPDF_String
FUNC5  (HPDF_MMgr        mmgr,
                  const char  *value,
                  HPDF_Encoder     encoder)
{
    HPDF_String obj;

    FUNC3((" HPDF_String_New\n"));

    obj = (HPDF_String)FUNC1 (mmgr, sizeof(HPDF_String_Rec));
    if (obj) {
        FUNC2 (&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_STRING;

        obj->mmgr = mmgr;
        obj->error = mmgr->error;
        obj->encoder = encoder;
        obj->value = NULL;
        obj->len = 0;

        if (FUNC4 (obj, value) != HPDF_OK) {
            FUNC0 (obj->mmgr, obj);
            return NULL;
        }
    }

    return obj;
}