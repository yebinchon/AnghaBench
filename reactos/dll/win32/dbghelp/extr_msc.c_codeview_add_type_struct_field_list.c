
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_74__ TYPE_9__ ;
typedef struct TYPE_73__ TYPE_8__ ;
typedef struct TYPE_72__ TYPE_7__ ;
typedef struct TYPE_71__ TYPE_6__ ;
typedef struct TYPE_70__ TYPE_5__ ;
typedef struct TYPE_69__ TYPE_4__ ;
typedef struct TYPE_68__ TYPE_3__ ;
typedef struct TYPE_67__ TYPE_37__ ;
typedef struct TYPE_66__ TYPE_36__ ;
typedef struct TYPE_65__ TYPE_35__ ;
typedef struct TYPE_64__ TYPE_34__ ;
typedef struct TYPE_63__ TYPE_33__ ;
typedef struct TYPE_62__ TYPE_32__ ;
typedef struct TYPE_61__ TYPE_31__ ;
typedef struct TYPE_60__ TYPE_30__ ;
typedef struct TYPE_59__ TYPE_2__ ;
typedef struct TYPE_58__ TYPE_29__ ;
typedef struct TYPE_57__ TYPE_28__ ;
typedef struct TYPE_56__ TYPE_27__ ;
typedef struct TYPE_55__ TYPE_26__ ;
typedef struct TYPE_54__ TYPE_25__ ;
typedef struct TYPE_53__ TYPE_24__ ;
typedef struct TYPE_52__ TYPE_23__ ;
typedef struct TYPE_51__ TYPE_22__ ;
typedef struct TYPE_50__ TYPE_21__ ;
typedef struct TYPE_49__ TYPE_20__ ;
typedef struct TYPE_48__ TYPE_1__ ;
typedef struct TYPE_47__ TYPE_19__ ;
typedef struct TYPE_46__ TYPE_18__ ;
typedef struct TYPE_45__ TYPE_17__ ;
typedef struct TYPE_44__ TYPE_16__ ;
typedef struct TYPE_43__ TYPE_15__ ;
typedef struct TYPE_42__ TYPE_14__ ;
typedef struct TYPE_41__ TYPE_13__ ;
typedef struct TYPE_40__ TYPE_12__ ;
typedef struct TYPE_39__ TYPE_11__ ;
typedef struct TYPE_38__ TYPE_10__ ;


struct TYPE_61__ {int len; } ;
struct TYPE_60__ {unsigned char* list; } ;
union codeview_reftype {TYPE_31__ generic; TYPE_30__ fieldlist; } ;
struct TYPE_62__ {int id; } ;
struct TYPE_58__ {unsigned int ref; } ;
struct TYPE_57__ {unsigned int ref; } ;
struct TYPE_56__ {int attribute; char const* name; } ;
struct TYPE_55__ {char const* name; } ;
struct TYPE_53__ {int namelen; } ;
struct TYPE_54__ {int attribute; TYPE_24__ p_name; } ;
struct TYPE_51__ {int namelen; } ;
struct TYPE_52__ {TYPE_22__ p_name; } ;
struct TYPE_49__ {int namelen; } ;
struct TYPE_50__ {int attribute; TYPE_20__ p_name; } ;
struct TYPE_46__ {int namelen; } ;
struct TYPE_47__ {TYPE_18__ p_name; } ;
struct TYPE_45__ {char const* name; } ;
struct TYPE_43__ {int namelen; } ;
struct TYPE_44__ {TYPE_15__ p_name; } ;
struct TYPE_41__ {int namelen; } ;
struct TYPE_42__ {TYPE_13__ p_name; } ;
struct TYPE_40__ {char const* name; } ;
struct TYPE_38__ {int namelen; } ;
struct TYPE_39__ {TYPE_10__ p_name; } ;
struct TYPE_73__ {int namelen; } ;
struct TYPE_74__ {TYPE_8__ p_name; } ;
struct TYPE_72__ {char const* name; } ;
struct TYPE_70__ {int namelen; } ;
struct TYPE_71__ {TYPE_5__ p_name; } ;
struct TYPE_68__ {int namelen; } ;
struct TYPE_69__ {TYPE_3__ p_name; } ;
struct TYPE_59__ {unsigned short const offset; int type; } ;
struct TYPE_48__ {unsigned short const offset; int type; } ;
struct TYPE_67__ {unsigned short const offset; int type; } ;
struct TYPE_66__ {unsigned short const vbpoff; } ;
struct TYPE_65__ {unsigned short const vbpoff; } ;
struct TYPE_64__ {unsigned short const offset; } ;
struct TYPE_63__ {unsigned short const offset; } ;
union codeview_fieldtype {TYPE_32__ generic; TYPE_29__ index_v2; TYPE_28__ index_v1; TYPE_27__ onemethod_v3; TYPE_26__ onemethod_virt_v3; TYPE_25__ onemethod_v2; TYPE_23__ onemethod_virt_v2; TYPE_21__ onemethod_v1; TYPE_19__ onemethod_virt_v1; TYPE_17__ nesttype_v3; TYPE_16__ nesttype_v2; TYPE_14__ nesttype_v1; TYPE_12__ method_v3; TYPE_11__ method_v2; TYPE_9__ method_v1; TYPE_7__ stmember_v3; TYPE_6__ stmember_v2; TYPE_4__ stmember_v1; TYPE_2__ member_v3; TYPE_1__ member_v2; TYPE_37__ member_v1; TYPE_36__ vbclass_v2; TYPE_35__ vbclass_v1; TYPE_34__ bclass_v2; TYPE_33__ bclass_v1; } ;
struct symt_udt {int dummy; } ;
struct p_string {int namelen; } ;
struct codeview_type_parse {int dummy; } ;
typedef unsigned char BYTE ;


 int FALSE ;
 int FIXME (char*,int) ;
 int TRUE ;
 int codeview_add_udt_element (struct codeview_type_parse*,struct symt_udt*,char const*,int,int ) ;
 union codeview_reftype* codeview_jump_to_type (struct codeview_type_parse*,unsigned int) ;
 int numeric_leaf (int*,unsigned short const*) ;
 int strlen (char const*) ;
 char const* terminate_string (struct p_string const*) ;

__attribute__((used)) static int codeview_add_type_struct_field_list(struct codeview_type_parse* ctp,
                                               struct symt_udt* symt,
                                               unsigned fieldlistno)
{
    const unsigned char* ptr;
    const unsigned char* last;
    int value, leaf_len;
    const struct p_string* p_name;
    const char* c_name;
    const union codeview_reftype*type_ref;
    const union codeview_fieldtype* type;

    if (!fieldlistno) return TRUE;
    type_ref = codeview_jump_to_type(ctp, fieldlistno);
    ptr = type_ref->fieldlist.list;
    last = (const BYTE*)type_ref + type_ref->generic.len + 2;

    while (ptr < last)
    {
        if (*ptr >= 0xf0)
        {
            ptr += *ptr & 0x0f;
            continue;
        }

        type = (const union codeview_fieldtype*)ptr;

        switch (type->generic.id)
        {
        case 152:
            leaf_len = numeric_leaf(&value, &type->bclass_v1.offset);



            ptr += 2 + 2 + 2 + leaf_len;
            break;

        case 151:
            leaf_len = numeric_leaf(&value, &type->bclass_v2.offset);



            ptr += 2 + 2 + 4 + leaf_len;
            break;

        case 131:
        case 148:
            {
                const unsigned short int* p_vboff;
                int vpoff, vplen;
                leaf_len = numeric_leaf(&value, &type->vbclass_v1.vbpoff);
                p_vboff = (const unsigned short int*)((const char*)&type->vbclass_v1.vbpoff + leaf_len);
                vplen = numeric_leaf(&vpoff, p_vboff);



                ptr += 2 + 2 + 2 + 2 + leaf_len + vplen;
            }
            break;

        case 130:
        case 147:
            {
                const unsigned short int* p_vboff;
                int vpoff, vplen;
                leaf_len = numeric_leaf(&value, &type->vbclass_v2.vbpoff);
                p_vboff = (const unsigned short int*)((const char*)&type->vbclass_v2.vbpoff + leaf_len);
                vplen = numeric_leaf(&vpoff, p_vboff);



                ptr += 2 + 2 + 4 + 4 + leaf_len + vplen;
            }
            break;

        case 146:
            leaf_len = numeric_leaf(&value, &type->member_v1.offset);
            p_name = (const struct p_string*)((const char*)&type->member_v1.offset + leaf_len);

            codeview_add_udt_element(ctp, symt, terminate_string(p_name), value,
                                     type->member_v1.type);

            ptr += 2 + 2 + 2 + leaf_len + (1 + p_name->namelen);
            break;

        case 145:
            leaf_len = numeric_leaf(&value, &type->member_v2.offset);
            p_name = (const struct p_string*)((const unsigned char*)&type->member_v2.offset + leaf_len);

            codeview_add_udt_element(ctp, symt, terminate_string(p_name), value,
                                     type->member_v2.type);

            ptr += 2 + 2 + 4 + leaf_len + (1 + p_name->namelen);
            break;

        case 144:
            leaf_len = numeric_leaf(&value, &type->member_v3.offset);
            c_name = (const char*)&type->member_v3.offset + leaf_len;

            codeview_add_udt_element(ctp, symt, c_name, value, type->member_v3.type);

            ptr += 2 + 2 + 4 + leaf_len + (strlen(c_name) + 1);
            break;

        case 134:

            ptr += 2 + 2 + 2 + (1 + type->stmember_v1.p_name.namelen);
            break;

        case 133:

            ptr += 2 + 4 + 2 + (1 + type->stmember_v2.p_name.namelen);
            break;

        case 132:

            ptr += 2 + 4 + 2 + (strlen(type->stmember_v3.name) + 1);
            break;

        case 143:

            ptr += 2 + 2 + 2 + (1 + type->method_v1.p_name.namelen);
            break;

        case 142:

            ptr += 2 + 2 + 4 + (1 + type->method_v2.p_name.namelen);
            break;

        case 141:

            ptr += 2 + 2 + 4 + (strlen(type->method_v3.name) + 1);
            break;

        case 140:

            ptr += 2 + 2 + (1 + type->nesttype_v1.p_name.namelen);
            break;

        case 139:

            ptr += 2 + 2 + 4 + (1 + type->nesttype_v2.p_name.namelen);
            break;

        case 138:

            ptr += 2 + 2 + 4 + (strlen(type->nesttype_v3.name) + 1);
            break;

        case 129:

            ptr += 2 + 2;
            break;

        case 128:

            ptr += 2 + 2 + 4;
            break;

        case 137:

            switch ((type->onemethod_v1.attribute >> 2) & 7)
            {
            case 4: case 6:
                ptr += 2 + 2 + 2 + 4 + (1 + type->onemethod_virt_v1.p_name.namelen);
                break;

            default:
                ptr += 2 + 2 + 2 + (1 + type->onemethod_v1.p_name.namelen);
                break;
            }
            break;

        case 136:

            switch ((type->onemethod_v2.attribute >> 2) & 7)
            {
            case 4: case 6:
                ptr += 2 + 2 + 4 + 4 + (1 + type->onemethod_virt_v2.p_name.namelen);
                break;

            default:
                ptr += 2 + 2 + 4 + (1 + type->onemethod_v2.p_name.namelen);
                break;
            }
            break;

        case 135:

            switch ((type->onemethod_v3.attribute >> 2) & 7)
            {
            case 4: case 6:
                ptr += 2 + 2 + 4 + 4 + (strlen(type->onemethod_virt_v3.name) + 1);
                break;

            default:
                ptr += 2 + 2 + 4 + (strlen(type->onemethod_v3.name) + 1);
                break;
            }
            break;

        case 150:
            if (!codeview_add_type_struct_field_list(ctp, symt, type->index_v1.ref))
                return FALSE;
            ptr += 2 + 2;
            break;

        case 149:
            if (!codeview_add_type_struct_field_list(ctp, symt, type->index_v2.ref))
                return FALSE;
            ptr += 2 + 2 + 4;
            break;

        default:
            FIXME("Unsupported type %04x in STRUCT field list\n", type->generic.id);
            return FALSE;
        }
    }

    return TRUE;
}
