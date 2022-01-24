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
struct TYPE_12__ {int /*<<< orphan*/ * pszCaption; } ;
struct TYPE_9__ {scalar_t__ nStartPage; } ;
struct TYPE_11__ {int dwFlags; TYPE_1__ u2; int /*<<< orphan*/  nPages; int /*<<< orphan*/  pszCaption; scalar_t__ pfnCallback; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  hwndParent; int /*<<< orphan*/  dwSize; } ;
struct TYPE_10__ {int useCallback; scalar_t__ active_page; int /*<<< orphan*/  nPages; TYPE_4__ ppshheader; } ;
typedef  TYPE_2__ PropSheetInfo ;
typedef  int /*<<< orphan*/  PROPSHEETHEADERW ;
typedef  TYPE_3__* LPCPROPSHEETHEADERW ;
typedef  int DWORD ;

/* Variables and functions */
 int INTRNL_ANY_WIZARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int PSH_USECALLBACK ; 
 int PSH_USEPSTARTPAGE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(LPCPROPSHEETHEADERW lppsh,
                                       PropSheetInfo * psInfo)
{
  DWORD dwSize = FUNC6(lppsh->dwSize,sizeof(PROPSHEETHEADERW));
  DWORD dwFlags = lppsh->dwFlags;

  psInfo->useCallback = (dwFlags & PSH_USECALLBACK) && (lppsh->pfnCallback);

  FUNC5(&psInfo->ppshheader,lppsh,dwSize);
  FUNC2("\n** PROPSHEETHEADER **\ndwSize\t\t%d\ndwFlags\t\t%08x\nhwndParent\t%p\nhInstance\t%p\npszCaption\t%s\nnPages\t\t%d\npfnCallback\t%p\n",
      lppsh->dwSize, lppsh->dwFlags, lppsh->hwndParent, lppsh->hInstance, FUNC3(lppsh->pszCaption), lppsh->nPages, lppsh->pfnCallback);

  if (lppsh->dwFlags & INTRNL_ANY_WIZARD)
     psInfo->ppshheader.pszCaption = NULL;
  else
  {
     if (!FUNC0(lppsh->pszCaption))
       psInfo->ppshheader.pszCaption = FUNC4( lppsh->pszCaption );
  }
  psInfo->nPages = lppsh->nPages;

  if (dwFlags & PSH_USEPSTARTPAGE)
  {
    FUNC2("PSH_USEPSTARTPAGE is on\n");
    psInfo->active_page = 0;
  }
  else
    psInfo->active_page = lppsh->u2.nStartPage;

  FUNC1(psInfo, dwFlags);
}