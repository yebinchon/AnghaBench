#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  mkid; } ;
struct TYPE_8__ {scalar_t__ uOffset; scalar_t__ cStr; int /*<<< orphan*/  pOleStr; } ;
struct TYPE_9__ {int uType; TYPE_1__ u; } ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  TYPE_2__* LPSTRRET ;
typedef  scalar_t__ LPCSTR ;
typedef  TYPE_3__* LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  STRRET_CSTR 130 
#define  STRRET_OFFSET 129 
#define  STRRET_WSTR 128 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5 (LPVOID dest, DWORD len, LPSTRRET src, LPCITEMIDLIST pidl)
{
        FUNC3("dest=%p len=0x%x strret=%p pidl=%p\n", dest , len, src, pidl);

	switch (src->uType)
	{
	  case STRRET_WSTR:
            FUNC4(dest, src->u.pOleStr, len);
	    FUNC0(src->u.pOleStr);
	    break;

	  case STRRET_CSTR:
            if (len && !FUNC2( CP_ACP, 0, src->u.cStr, -1, dest, len ))
                ((LPWSTR)dest)[len-1] = 0;
	    break;

	  case STRRET_OFFSET:
	    if (pidl)
	    {
                if (len && !FUNC2( CP_ACP, 0, ((LPCSTR)&pidl->mkid)+src->u.uOffset,
                                                 -1, dest, len ))
                    ((LPWSTR)dest)[len-1] = 0;
	    }
	    break;

	  default:
	    FUNC1("unknown type!\n");
	    if (len)
	    { *(LPWSTR)dest = '\0';
	    }
	    return(FALSE);
	}
        return TRUE;
}