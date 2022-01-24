#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_12__ {int /*<<< orphan*/ * pszCaption; } ;
struct TYPE_9__ {scalar_t__ nStartPage; } ;
struct TYPE_11__ {int dwFlags; TYPE_1__ u2; int /*<<< orphan*/  nPages; int /*<<< orphan*/  pszCaption; scalar_t__ pfnCallback; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  hwndParent; int /*<<< orphan*/  dwSize; } ;
struct TYPE_10__ {int useCallback; scalar_t__ active_page; int /*<<< orphan*/  nPages; TYPE_4__ ppshheader; } ;
typedef  TYPE_2__ PropSheetInfo ;
typedef  int /*<<< orphan*/  PROPSHEETHEADERA ;
typedef  TYPE_3__* LPCPROPSHEETHEADERA ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int INTRNL_ANY_WIZARD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int PSH_USECALLBACK ; 
 int PSH_USEPSTARTPAGE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(LPCPROPSHEETHEADERA lppsh,
                                       PropSheetInfo * psInfo)
{
  DWORD dwSize = FUNC7(lppsh->dwSize,sizeof(PROPSHEETHEADERA));
  DWORD dwFlags = lppsh->dwFlags;

  psInfo->useCallback = (dwFlags & PSH_USECALLBACK )&& (lppsh->pfnCallback);

  FUNC6(&psInfo->ppshheader,lppsh,dwSize);
  FUNC4("\n** PROPSHEETHEADER **\ndwSize\t\t%d\ndwFlags\t\t%08x\nhwndParent\t%p\nhInstance\t%p\npszCaption\t'%s'\nnPages\t\t%d\npfnCallback\t%p\n",
	lppsh->dwSize, lppsh->dwFlags, lppsh->hwndParent, lppsh->hInstance,
	FUNC5(lppsh->pszCaption), lppsh->nPages, lppsh->pfnCallback);

  if (lppsh->dwFlags & INTRNL_ANY_WIZARD)
     psInfo->ppshheader.pszCaption = NULL;
  else
  {
     if (!FUNC1(lppsh->pszCaption))
     {
        int len = FUNC2(CP_ACP, 0, lppsh->pszCaption, -1, NULL, 0);
        WCHAR *caption = FUNC0( len*sizeof (WCHAR) );

        FUNC2(CP_ACP, 0, lppsh->pszCaption, -1, caption, len);
        psInfo->ppshheader.pszCaption = caption;
     }
  }
  psInfo->nPages = lppsh->nPages;

  if (dwFlags & PSH_USEPSTARTPAGE)
  {
    FUNC4("PSH_USEPSTARTPAGE is on\n");
    psInfo->active_page = 0;
  }
  else
    psInfo->active_page = lppsh->u2.nStartPage;

  FUNC3(psInfo, dwFlags);
}