#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symt_udt {int dummy; } ;
struct symt {int dummy; } ;
struct ParseTypedefData {char* ptr; int idx; int /*<<< orphan*/  buf; int /*<<< orphan*/  module; } ;
typedef  scalar_t__ DWORD64 ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ParseTypedefData*,int) ; 
 int /*<<< orphan*/  TI_GET_LENGTH ; 
 int TRUE ; 
 int FUNC1 (struct ParseTypedefData*) ; 
 int /*<<< orphan*/  FUNC2 (struct ParseTypedefData*) ; 
 int FUNC3 (struct ParseTypedefData*,long*) ; 
 int FUNC4 (struct ParseTypedefData*,int /*<<< orphan*/ *,struct symt**) ; 
 int /*<<< orphan*/  FUNC5 (float**) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct symt_udt*,char*,struct symt*,long,long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct symt*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct symt*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct symt_udt*,long) ; 

__attribute__((used)) static inline int FUNC13(struct ParseTypedefData* ptd, 
                                           struct symt_udt* sdt)
{
    long        	sz, ofs;
    struct symt*        adt;
    struct symt*        dt = NULL;
    int			idx;
    int			doadd;

    FUNC0(ptd, FUNC3(ptd, &sz) == -1);

    doadd = FUNC12(ptd->module, sdt, sz);
    if (*ptd->ptr == '!') /* C++ inheritance */
    {
        long     num_classes;

        ptd->ptr++;
        FUNC0(ptd, FUNC3(ptd, &num_classes) == -1);
        FUNC0(ptd, *ptd->ptr++ != ',');
        while (--num_classes >= 0)
        {
            ptd->ptr += 2; /* skip visibility and inheritance */
            FUNC0(ptd, FUNC3(ptd, &ofs) == -1);
            FUNC0(ptd, *ptd->ptr++ != ',');

            FUNC0(ptd, FUNC4(ptd, NULL, &adt) == -1);

            if (doadd && adt)
            {
                char    tmp[256];
                DWORD64 size;

                FUNC8(tmp, "__inherited_class_");
                FUNC6(tmp, FUNC11(adt));

                /* FIXME: TI_GET_LENGTH will not always work, especially when adt
                 * has just been seen as a forward definition and not the real stuff
                 * yet.
                 * As we don't use much the size of members in structs, this may not
                 * be much of a problem
                 */
                FUNC10(ptd->module, adt, TI_GET_LENGTH, &size);
                FUNC9(ptd->module, sdt, tmp, adt, ofs, (DWORD)size * 8);
            }
            FUNC0(ptd, *ptd->ptr++ != ';');
        }
        
    }
    /* if the structure has already been filled, just redo the parsing
     * but don't store results into the struct
     * FIXME: there's a quite ugly memory leak in there...
     */

    /* Now parse the individual elements of the structure/union. */
    while (*ptd->ptr != ';') 
    {
	/* agg_name : type ',' <int:offset> ',' <int:size> */
	idx = ptd->idx;

        if (ptd->ptr[0] == '$' && ptd->ptr[1] == 'v')
        {
            long        x;

            if (ptd->ptr[2] == 'f')
            {
                /* C++ virtual method table */
                ptd->ptr += 3;
                FUNC5(&ptd->ptr);
                FUNC0(ptd, *ptd->ptr++ != ':');
                FUNC0(ptd, FUNC4(ptd, NULL, &dt) == -1);
                FUNC0(ptd, *ptd->ptr++ != ',');
                FUNC0(ptd, FUNC3(ptd, &x) == -1);
                FUNC0(ptd, *ptd->ptr++ != ';');
                ptd->idx = idx;
                continue;
            }
            else if (ptd->ptr[2] == 'b')
            {
                ptd->ptr += 3;
                FUNC0(ptd, FUNC4(ptd, NULL, &dt) == -1);
                FUNC0(ptd, *ptd->ptr++ != ':');
                FUNC0(ptd, FUNC4(ptd, NULL, &dt) == -1);
                FUNC0(ptd, *ptd->ptr++ != ',');
                FUNC0(ptd, FUNC3(ptd, &x) == -1);
                FUNC0(ptd, *ptd->ptr++ != ';');
                ptd->idx = idx;
                continue;
            }
        }

	FUNC0(ptd, FUNC1(ptd) == -1);
        /* Ref. TSDF R2.130 Section 7.4.  When the field name is a method name
         * it is followed by two colons rather than one.
         */
        if (*ptd->ptr == ':')
        {
            ptd->ptr++; 
            FUNC2(ptd);
            ptd->idx = idx;
            continue;
        }
        else
        {
            /* skip C++ member protection /0 /1 or /2 */
            if (*ptd->ptr == '/') ptd->ptr += 2;
        }
	FUNC0(ptd, FUNC4(ptd, NULL, &adt) == -1);

        switch (*ptd->ptr++)
        {
        case ',':
            FUNC0(ptd, FUNC3(ptd, &ofs) == -1);
            FUNC0(ptd, *ptd->ptr++ != ',');
            FUNC0(ptd, FUNC3(ptd, &sz) == -1);
            FUNC0(ptd, *ptd->ptr++ != ';');

            if (doadd) FUNC9(ptd->module, sdt, ptd->buf + idx, adt, ofs, sz);
            break;
        case ':':
            {
                const char* tmp;
                /* method parameters... terminated by ';' */
                FUNC0(ptd, !(tmp = FUNC7(ptd->ptr, ';')));
                ptd->ptr = tmp + 1;
            }
            break;
        default:
            FUNC0(ptd, TRUE);
        }
	ptd->idx = idx;
    }
    FUNC0(ptd, *ptd->ptr++ != ';');
    if (*ptd->ptr == '~')
    {
        ptd->ptr++;
        FUNC0(ptd, *ptd->ptr++ != '%');
        FUNC0(ptd, FUNC4(ptd, NULL, &dt) == -1);
        FUNC0(ptd, *ptd->ptr++ != ';');
    }
    return 0;
}