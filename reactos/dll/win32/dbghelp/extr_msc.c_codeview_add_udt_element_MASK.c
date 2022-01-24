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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int type; int nbits; int /*<<< orphan*/  bitoff; } ;
struct TYPE_5__ {unsigned int type; int nbits; int /*<<< orphan*/  bitoff; } ;
struct TYPE_4__ {int id; } ;
union codeview_reftype {TYPE_3__ bitfield_v2; TYPE_2__ bitfield_v1; TYPE_1__ generic; } ;
struct symt_udt {int dummy; } ;
struct symt {int dummy; } ;
struct codeview_type_parse {int /*<<< orphan*/  module; } ;
typedef  scalar_t__ DWORD64 ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  LF_BITFIELD_V1 129 
#define  LF_BITFIELD_V2 128 
 int /*<<< orphan*/  TI_GET_LENGTH ; 
 struct symt* FUNC0 (struct codeview_type_parse*,unsigned int,int /*<<< orphan*/ ) ; 
 union codeview_reftype* FUNC1 (struct codeview_type_parse*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct symt_udt*,char const*,struct symt*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct symt*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC4(struct codeview_type_parse* ctp,
                                     struct symt_udt* symt, const char* name,
                                     int value, unsigned type)
{
    struct symt*                subtype;
    const union codeview_reftype*cv_type;

    if ((cv_type = FUNC1(ctp, type)))
    {
        switch (cv_type->generic.id)
        {
        case LF_BITFIELD_V1:
            FUNC2(ctp->module, symt, name,
                                 FUNC0(ctp, cv_type->bitfield_v1.type, FALSE),
                                 (value << 3) + cv_type->bitfield_v1.bitoff,
                                 cv_type->bitfield_v1.nbits);
            return;
        case LF_BITFIELD_V2:
            FUNC2(ctp->module, symt, name,
                                 FUNC0(ctp, cv_type->bitfield_v2.type, FALSE),
                                 (value << 3) + cv_type->bitfield_v2.bitoff,
                                 cv_type->bitfield_v2.nbits);
            return;
        }
    }
    subtype = FUNC0(ctp, type, FALSE);

    if (subtype)
    {
        DWORD64 elem_size = 0;
        FUNC3(ctp->module, subtype, TI_GET_LENGTH, &elem_size);
        FUNC2(ctp->module, symt, name, subtype,
                             value << 3, (DWORD)elem_size << 3);
    }
}