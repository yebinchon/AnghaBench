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
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct symt {int /*<<< orphan*/  tag; } ;
struct TYPE_6__ {char const* name; } ;
struct symt_udt {struct symt symt; TYPE_1__ hash_elt; } ;
struct symt_enum {int dummy; } ;
struct ParseTypedefData {char* ptr; int idx; int /*<<< orphan*/  module; int /*<<< orphan*/  buf; } ;
typedef  enum UdtKind { ____Placeholder_UdtKind } UdtKind ;
struct TYPE_10__ {struct symt symt; } ;
struct TYPE_9__ {struct symt symt; } ;
struct TYPE_8__ {struct symt symt; } ;
struct TYPE_7__ {struct symt symt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ParseTypedefData*,int) ; 
 int /*<<< orphan*/  SymTagUDT ; 
 int /*<<< orphan*/  FUNC2 (char*,long,long,int /*<<< orphan*/ ) ; 
 int UdtStruct ; 
 int UdtUnion ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  btVoid ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 struct symt** FUNC5 (long,long) ; 
 int FUNC6 (struct ParseTypedefData*,int,struct symt**) ; 
 int FUNC7 (struct ParseTypedefData*,struct symt_udt*) ; 
 int FUNC8 (struct ParseTypedefData*,struct symt**) ; 
 int FUNC9 (struct ParseTypedefData*,struct symt_enum*) ; 
 int FUNC10 (struct ParseTypedefData*) ; 
 int FUNC11 (struct ParseTypedefData*,long*) ; 
 int FUNC12 (struct ParseTypedefData*,char const*,struct symt**) ; 
 int FUNC13 (struct ParseTypedefData*,long*,long*) ; 
 int FUNC14 (char const*,char const*) ; 
 unsigned int FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct symt*) ; 
 TYPE_5__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC18 (int /*<<< orphan*/ ,char const*,struct symt*) ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ ,struct symt*,int) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ ,struct symt*,int) ; 
 struct symt_udt* FUNC21 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC22(struct ParseTypedefData* ptd, const char* typename,
                                   struct symt** ret_dt)
{
    int			idx;
    long		sz = -1;
    struct symt*	new_dt = NULL;     /* newly created data type */
    struct symt*	ref_dt;		   /* referenced data type (pointer...) */
    long		filenr1, subnr1, tmp;

    /* things are a bit complicated because of the way the typedefs are stored inside
     * the file, because addresses can change when realloc is done, so we must call
     * over and over stabs_find_ref() to keep the correct values around
     */
    FUNC1(ptd, FUNC13(ptd, &filenr1, &subnr1) == -1);

    while (*ptd->ptr == '=')
    {
	ptd->ptr++;
	FUNC1(ptd, new_dt != NULL);

	/* first handle attribute if any */
	switch (*ptd->ptr)      
        {
	case '@':
	    if (*++ptd->ptr == 's')
            {
		ptd->ptr++;
		if (FUNC11(ptd, &sz) == -1)
                {
		    FUNC0("Not an attribute... NIY\n");
		    ptd->ptr -= 2;
		    return -1;
		}
		FUNC1(ptd, *ptd->ptr++ != ';');
	    }
	    break;
	}
	/* then the real definitions */
	switch (*ptd->ptr++)
        {
	case '*':
        case '&':
	    FUNC1(ptd, FUNC22(ptd, NULL, &ref_dt) == -1);
	    new_dt = &FUNC20(ptd->module, ref_dt, sizeof(void*))->symt;
           break;
        case 'k': /* 'const' modifier */
        case 'B': /* 'volatile' modifier */
            /* just kinda ignore the modifier, I guess -gmt */
            FUNC1(ptd, FUNC22(ptd, typename, &new_dt) == -1);
	    break;
	case '(':
	    ptd->ptr--;
            FUNC1(ptd, FUNC22(ptd, typename, &new_dt) == -1);
	    break;
	case 'a':
	    FUNC1(ptd, FUNC8(ptd, &new_dt) == -1);
	    break;
	case 'r':
	    FUNC1(ptd, FUNC12(ptd, typename, &new_dt) == -1);
	    FUNC3(!*FUNC5(filenr1, subnr1));
	    *FUNC5(filenr1, subnr1) = new_dt;
	    break;
	case 'f':
	    FUNC1(ptd, FUNC22(ptd, NULL, &ref_dt) == -1);
	    new_dt = &FUNC19(ptd->module, ref_dt, -1)->symt;
	    break;
	case 'e':
            FUNC6(ptd, 1 /* int */, &ref_dt);
            new_dt = &FUNC18(ptd->module, typename, ref_dt)->symt;
	    FUNC1(ptd, FUNC9(ptd, (struct symt_enum*)new_dt) == -1);
	    break;
	case 's':
	case 'u':
            {
                struct symt_udt*    udt;
                enum UdtKind kind = (ptd->ptr[-1] == 's') ? UdtStruct : UdtUnion;
                /* udt can have been already defined in a forward definition */
                udt = (struct symt_udt*)*FUNC5(filenr1, subnr1);
                if (!udt)
                {
                    udt = FUNC21(ptd->module, typename, 0, kind);
                    /* we need to set it here, because a struct can hold a pointer
                     * to itself
                     */
                    new_dt = *FUNC5(filenr1, subnr1) = &udt->symt;
                }
                else
                {
                    unsigned l1, l2;
                    if (udt->symt.tag != SymTagUDT)
                    {
                        FUNC0("Forward declaration (%p/%s) is not an aggregate (%u)\n",
                            udt, FUNC16(&udt->symt), udt->symt.tag);
                        return -1;
                    }
                    /* FIXME: we currently don't correctly construct nested C++
                     * classes names. Therefore, we could be here with either:
                     * - typename and udt->hash_elt.name being the same string
                     *   (non embedded case)
                     * - typename being foo::bar while udt->hash_elt.name being 
                     *   just bar
                     * So, we twist the comparison to test both occurrences. When
                     * we have proper C++ types in this file, this twist has to be
                     * removed
                     */
                    l1 = FUNC15(udt->hash_elt.name);
                    l2 = FUNC15(typename);
                    if (l1 > l2 || FUNC14(udt->hash_elt.name, typename + l2 - l1))
                        FUNC0("Forward declaration name mismatch %s <> %s\n",
                            udt->hash_elt.name, typename);
                    new_dt = &udt->symt;
                }
                FUNC1(ptd, FUNC7(ptd, udt) == -1);
	    }
	    break;
	case 'x':
	    idx = ptd->idx;
            tmp = *ptd->ptr++;
	    FUNC1(ptd, FUNC10(ptd) == -1);
	    switch (tmp)
            {
	    case 'e':
                FUNC6(ptd, 1 /* int */, &ref_dt);
                new_dt = &FUNC18(ptd->module, ptd->buf + idx, ref_dt)->symt;
                break;
	    case 's':
                new_dt = &FUNC21(ptd->module, ptd->buf + idx, 0, UdtStruct)->symt;
	        break;
            case 'u':
                new_dt = &FUNC21(ptd->module, ptd->buf + idx, 0, UdtUnion)->symt;
	        break;
	    default:
                return -1;
	    }
	    ptd->idx = idx;
	    break;
	case '-':
            {
                FUNC1(ptd, FUNC11(ptd, &tmp) == -1);
                FUNC1(ptd, FUNC6(ptd, tmp, &new_dt) == -1);
                FUNC1(ptd, *ptd->ptr++ != ';');
            }
	    break;
        case '#':
            if (*ptd->ptr == '#')
            {
                ptd->ptr++;
                FUNC1(ptd, FUNC22(ptd, NULL, &ref_dt) == -1);
                new_dt = &FUNC19(ptd->module, ref_dt, -1)->symt;
            }
            else
            {
                struct symt*    cls_dt;
                struct symt*    pmt_dt;

                FUNC1(ptd, FUNC22(ptd, NULL, &cls_dt) == -1);
                FUNC1(ptd, *ptd->ptr++ != ',');
                FUNC1(ptd, FUNC22(ptd, NULL, &ref_dt) == -1);
                new_dt = &FUNC19(ptd->module, ref_dt, -1)->symt;
                while (*ptd->ptr == ',')
                {
                    ptd->ptr++;
                    FUNC1(ptd, FUNC22(ptd, NULL, &pmt_dt) == -1);
                }
            }
            break;
        case 'R':
            {
                long    type, len, unk;
                int     basic;
                
                FUNC1(ptd, FUNC11(ptd, &type) == -1);
                FUNC1(ptd, *ptd->ptr++ != ';');	/* ';' */
                FUNC1(ptd, FUNC11(ptd, &len) == -1);
                FUNC1(ptd, *ptd->ptr++ != ';');	/* ';' */
                FUNC1(ptd, FUNC11(ptd, &unk) == -1);
                FUNC1(ptd, *ptd->ptr++ != ';');	/* ';' */

                switch (type) /* see stabs_get_basic for the details */
                {
                case 1: basic = 12; break;
                case 2: basic = 13; break;
                case 3: basic = 25; break;
                case 4: basic = 26; break;
                case 5: basic = 35; break;
                case 6: basic = 14; break;
                default: FUNC1(ptd, 1);
                }
                FUNC1(ptd, FUNC6(ptd, basic, &new_dt) == -1);
            }
            break;
	default:
	    FUNC0("Unknown type '%c'\n", ptd->ptr[-1]);
	    return -1;
	}
    }

    if (!new_dt)
    {
        /* is it a forward declaration that has been filled ? */
	new_dt = *FUNC5(filenr1, subnr1);
        /* if not, this should be void (which is defined as a ref to itself, but we
         * don't correctly catch it)
         */
        if (!new_dt && typename)
        {
            new_dt = &FUNC17(ptd->module, btVoid, typename, 0)->symt;
            FUNC1(ptd, FUNC14(typename, "void"));
        }
    }            

    *FUNC5(filenr1, subnr1) = *ret_dt = new_dt;

    FUNC2("Adding (%ld,%ld) %s\n", filenr1, subnr1, FUNC4(typename));

    return 0;
}