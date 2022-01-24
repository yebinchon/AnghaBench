#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct vector {int dummy; } ;
struct symt_udt {int dummy; } ;
struct symt {int dummy; } ;
struct TYPE_26__ {char* string; scalar_t__ uvalue; } ;
struct attribute {TYPE_1__ u; } ;
typedef  enum UdtKind { ____Placeholder_UdtKind } UdtKind ;
struct TYPE_28__ {int /*<<< orphan*/  module; } ;
typedef  TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_29__ {struct symt* symt; TYPE_2__* abbrev; } ;
typedef  TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_30__ {struct symt symt; } ;
struct TYPE_27__ {int tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_byte_size ; 
 int /*<<< orphan*/  DW_AT_name ; 
#define  DW_TAG_GNU_formal_parameter_pack 144 
#define  DW_TAG_GNU_template_parameter_pack 143 
#define  DW_TAG_array_type 142 
#define  DW_TAG_class_type 141 
#define  DW_TAG_const_type 140 
#define  DW_TAG_enumeration_type 139 
#define  DW_TAG_imported_declaration 138 
#define  DW_TAG_inheritance 137 
#define  DW_TAG_member 136 
#define  DW_TAG_ptr_to_member_type 135 
#define  DW_TAG_structure_type 134 
#define  DW_TAG_subprogram 133 
#define  DW_TAG_template_type_param 132 
#define  DW_TAG_template_value_param 131 
#define  DW_TAG_typedef 130 
#define  DW_TAG_union_type 129 
#define  DW_TAG_variable 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,struct attribute*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*,char*) ; 
 struct vector* FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_4__*,struct symt_udt*) ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC13 (struct vector*,unsigned int) ; 
 unsigned int FUNC14 (struct vector*) ; 

__attribute__((used)) static struct symt* FUNC15(dwarf2_parse_context_t* ctx,
                                          dwarf2_debug_info_t* di,
                                          enum UdtKind udt)
{
    struct attribute    name;
    struct attribute    size;
    struct vector*      children;
    dwarf2_debug_info_t*child;
    unsigned int        i;

    if (di->symt) return di->symt;

    FUNC1("%s, for %s\n", FUNC2(ctx), FUNC3(di)); 

    /* quirk... FIXME provide real support for anonymous UDTs */
    if (!FUNC4(ctx, di, DW_AT_name, &name))
        name.u.string = "zz_anon_zz";
    if (!FUNC4(ctx, di, DW_AT_byte_size, &size)) size.u.uvalue = 0;

    di->symt = &FUNC12(ctx->module, FUNC5(ctx, di, name.u.string),
                             size.u.uvalue, udt)->symt;

    children = FUNC6(ctx, di);
    if (children) for (i = 0; i < FUNC14(children); i++)
    {
        child = *(dwarf2_debug_info_t**)FUNC13(children, i);

        switch (child->abbrev->tag)
        {
        case DW_TAG_array_type:
            FUNC7(ctx, di);
            break;
        case DW_TAG_member:
            /* FIXME: should I follow the sibling stuff ?? */
            FUNC11(ctx, child, (struct symt_udt*)di->symt);
            break;
        case DW_TAG_enumeration_type:
            FUNC9(ctx, child);
            break;
        case DW_TAG_subprogram:
            FUNC10(ctx, child);
            break;
        case DW_TAG_const_type:
            FUNC8(ctx, child);
            break;
        case DW_TAG_structure_type:
        case DW_TAG_class_type:
        case DW_TAG_union_type:
        case DW_TAG_typedef:
            /* FIXME: we need to handle nested udt definitions */
        case DW_TAG_inheritance:
        case DW_TAG_template_type_param:
        case DW_TAG_template_value_param:
        case DW_TAG_variable:
        case DW_TAG_imported_declaration:
        case DW_TAG_ptr_to_member_type:
        case DW_TAG_GNU_template_parameter_pack:
        case DW_TAG_GNU_formal_parameter_pack:
            /* FIXME: some C++ related stuff */
            break;
        default:
            FUNC0("Unhandled Tag type 0x%lx at %s, for %s\n",
                  child->abbrev->tag, FUNC2(ctx), FUNC3(di));
            break;
        }
    }

    return di->symt;
}