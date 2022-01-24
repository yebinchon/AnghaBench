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
struct symt {int dummy; } ;
struct ParseTypedefData {char* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ParseTypedefData*,int) ; 
 int FUNC1 (struct ParseTypedefData*,long*) ; 
 int FUNC2 (struct ParseTypedefData*,int /*<<< orphan*/ *,struct symt**) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static inline int FUNC4(struct ParseTypedefData* ptd)
{
    struct symt*        dt;
    const char*         tmp;
    char                mthd;

    do
    {
        /* get type of return value */
        FUNC0(ptd, FUNC2(ptd, NULL, &dt) == -1);
        if (*ptd->ptr == ';') ptd->ptr++;

        /* get types of parameters */
        if (*ptd->ptr == ':')
        {
            FUNC0(ptd, !(tmp = FUNC3(ptd->ptr + 1, ';')));
            ptd->ptr = tmp + 1;
        }
        FUNC0(ptd, !(*ptd->ptr >= '0' && *ptd->ptr <= '9'));
        ptd->ptr++;
        FUNC0(ptd, !(ptd->ptr[0] >= 'A' && *ptd->ptr <= 'D'));
        mthd = *++ptd->ptr;
        FUNC0(ptd, mthd != '.' && mthd != '?' && mthd != '*');
        ptd->ptr++;
        if (mthd == '*')
        {
            long int            ofs;

            FUNC0(ptd, FUNC1(ptd, &ofs) == -1);
            FUNC0(ptd, *ptd->ptr++ != ';');
            FUNC0(ptd, FUNC2(ptd, NULL, &dt) == -1);
            FUNC0(ptd, *ptd->ptr++ != ';');
        }
    } while (*ptd->ptr != ';');
    ptd->ptr++;

    return 0;
}