#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int obj_id; scalar_t__ obj_class; int gen_no; } ;
struct TYPE_3__ {scalar_t__ obj; } ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Proxy ;
typedef  TYPE_2__ HPDF_Obj_Header ;
typedef  int /*<<< orphan*/  HPDF_Encrypt ;

/* Variables and functions */
 char* FUNC0 (char*,int,char*) ; 
 scalar_t__ HPDF_OCLASS_PROXY ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int HPDF_OTYPE_HIDDEN ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int HPDF_SHORT_BUF_SIZ ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

HPDF_STATUS
FUNC5  (void          *obj,
                 HPDF_Stream   stream,
                 HPDF_Encrypt  e)
{
    HPDF_Obj_Header *header = (HPDF_Obj_Header *)obj;

    FUNC2((" HPDF_Obj_Write\n"));

    if (header->obj_id & HPDF_OTYPE_HIDDEN) {
         FUNC2(("#HPDF_Obj_Write obj=0x%08X skipped\n", (HPDF_UINT)obj));
         return HPDF_OK;
    }

    if (header->obj_class == HPDF_OCLASS_PROXY) {
        char buf[HPDF_SHORT_BUF_SIZ];
        char *pbuf = buf;
        char *eptr = buf + HPDF_SHORT_BUF_SIZ - 1;
        HPDF_Proxy p = obj;

        header = (HPDF_Obj_Header*)p->obj;

        pbuf = FUNC0 (pbuf, header->obj_id & 0x00FFFFFF, eptr);
        *pbuf++ = ' ';
        pbuf = FUNC0 (pbuf, header->gen_no, eptr);
        FUNC3(pbuf, " R", eptr);

        return FUNC4(stream, buf);
    }

    return FUNC1(obj, stream, e);
}