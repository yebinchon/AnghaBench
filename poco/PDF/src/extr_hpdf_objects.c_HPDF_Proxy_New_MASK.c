#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_5__ {void* obj; TYPE_3__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Proxy_Rec ;
typedef  TYPE_1__* HPDF_Proxy ;
typedef  int /*<<< orphan*/  HPDF_Obj_Header ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_OCLASS_PROXY ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

HPDF_Proxy
FUNC3  (HPDF_MMgr  mmgr,
                 void       *obj)
{
    HPDF_Proxy p = FUNC0 (mmgr, sizeof(HPDF_Proxy_Rec));

    FUNC2((" HPDF_Proxy_New\n"));

    if (p) {
        FUNC1 (&p->header, 0, sizeof(HPDF_Obj_Header));
        p->header.obj_class = HPDF_OCLASS_PROXY;
        p->obj = obj;
    }

    return p;
}