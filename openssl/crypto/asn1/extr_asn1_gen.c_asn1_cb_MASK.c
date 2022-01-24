#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int utype; char const* str; int imp_tag; int imp_class; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ tag_exp_arg ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_CB ; 
 int ASN1_GEN_FLAG ; 
#define  ASN1_GEN_FLAG_BITWRAP 134 
#define  ASN1_GEN_FLAG_EXP 133 
#define  ASN1_GEN_FLAG_FORMAT 132 
#define  ASN1_GEN_FLAG_IMP 131 
#define  ASN1_GEN_FLAG_OCTWRAP 130 
#define  ASN1_GEN_FLAG_SEQWRAP 129 
#define  ASN1_GEN_FLAG_SETWRAP 128 
 int /*<<< orphan*/  ASN1_GEN_FORMAT_ASCII ; 
 int /*<<< orphan*/  ASN1_GEN_FORMAT_BITLIST ; 
 int /*<<< orphan*/  ASN1_GEN_FORMAT_HEX ; 
 int /*<<< orphan*/  ASN1_GEN_FORMAT_UTF8 ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_NESTED_TAGGING ; 
 int /*<<< orphan*/  ASN1_R_MISSING_VALUE ; 
 int /*<<< orphan*/  ASN1_R_UNKNOWN_FORMAT ; 
 int /*<<< orphan*/  ASN1_R_UNKNOWN_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int V_ASN1_BIT_STRING ; 
 int V_ASN1_OCTET_STRING ; 
 int V_ASN1_SEQUENCE ; 
 int V_ASN1_SET ; 
 int V_ASN1_UNIVERSAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int,int,int) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC6(const char *elem, int len, void *bitstr)
{
    tag_exp_arg *arg = bitstr;
    int i;
    int utype;
    int vlen = 0;
    const char *p, *vstart = NULL;

    int tmp_tag, tmp_class;

    if (elem == NULL)
        return -1;

    for (i = 0, p = elem; i < len; p++, i++) {
        /* Look for the ':' in name value pairs */
        if (*p == ':') {
            vstart = p + 1;
            vlen = len - (vstart - elem);
            len = p - elem;
            break;
        }
    }

    utype = FUNC3(elem, len);

    if (utype == -1) {
        FUNC0(ASN1_F_ASN1_CB, ASN1_R_UNKNOWN_TAG);
        FUNC1(2, "tag=", elem);
        return -1;
    }

    /* If this is not a modifier mark end of string and exit */
    if (!(utype & ASN1_GEN_FLAG)) {
        arg->utype = utype;
        arg->str = vstart;
        /* If no value and not end of string, error */
        if (!vstart && elem[len]) {
            FUNC0(ASN1_F_ASN1_CB, ASN1_R_MISSING_VALUE);
            return -1;
        }
        return 0;
    }

    switch (utype) {

    case ASN1_GEN_FLAG_IMP:
        /* Check for illegal multiple IMPLICIT tagging */
        if (arg->imp_tag != -1) {
            FUNC0(ASN1_F_ASN1_CB, ASN1_R_ILLEGAL_NESTED_TAGGING);
            return -1;
        }
        if (!FUNC4(vstart, vlen, &arg->imp_tag, &arg->imp_class))
            return -1;
        break;

    case ASN1_GEN_FLAG_EXP:

        if (!FUNC4(vstart, vlen, &tmp_tag, &tmp_class))
            return -1;
        if (!FUNC2(arg, tmp_tag, tmp_class, 1, 0, 0))
            return -1;
        break;

    case ASN1_GEN_FLAG_SEQWRAP:
        if (!FUNC2(arg, V_ASN1_SEQUENCE, V_ASN1_UNIVERSAL, 1, 0, 1))
            return -1;
        break;

    case ASN1_GEN_FLAG_SETWRAP:
        if (!FUNC2(arg, V_ASN1_SET, V_ASN1_UNIVERSAL, 1, 0, 1))
            return -1;
        break;

    case ASN1_GEN_FLAG_BITWRAP:
        if (!FUNC2(arg, V_ASN1_BIT_STRING, V_ASN1_UNIVERSAL, 0, 1, 1))
            return -1;
        break;

    case ASN1_GEN_FLAG_OCTWRAP:
        if (!FUNC2(arg, V_ASN1_OCTET_STRING, V_ASN1_UNIVERSAL, 0, 0, 1))
            return -1;
        break;

    case ASN1_GEN_FLAG_FORMAT:
        if (!vstart) {
            FUNC0(ASN1_F_ASN1_CB, ASN1_R_UNKNOWN_FORMAT);
            return -1;
        }
        if (FUNC5(vstart, "ASCII", 5) == 0)
            arg->format = ASN1_GEN_FORMAT_ASCII;
        else if (FUNC5(vstart, "UTF8", 4) == 0)
            arg->format = ASN1_GEN_FORMAT_UTF8;
        else if (FUNC5(vstart, "HEX", 3) == 0)
            arg->format = ASN1_GEN_FORMAT_HEX;
        else if (FUNC5(vstart, "BITLIST", 7) == 0)
            arg->format = ASN1_GEN_FORMAT_BITLIST;
        else {
            FUNC0(ASN1_F_ASN1_CB, ASN1_R_UNKNOWN_FORMAT);
            return -1;
        }
        break;

    }

    return 1;

}