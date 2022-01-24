#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dwSuggestedBufferSize; } ;
struct TYPE_11__ {TYPE_2__* lpFrame; TYPE_1__ sInfo; int /*<<< orphan*/ * pg; int /*<<< orphan*/ * pCurStream; } ;
struct TYPE_10__ {int /*<<< orphan*/  biSizeImage; } ;
typedef  int /*<<< orphan*/ * PGETFRAME ;
typedef  int /*<<< orphan*/ * PAVISTREAM ;
typedef  TYPE_2__* LPVOID ;
typedef  int /*<<< orphan*/  LONG ;
typedef  TYPE_3__ IAVIEditStreamImpl ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_3__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPVOID FUNC6(IAVIEditStreamImpl* const This,
                                PAVISTREAM pstream, LONG pos)
{
  PGETFRAME pg;

  FUNC5("(%p,%p,%d)\n",This,pstream,pos);

  if (pstream == NULL)
    return NULL;

  /* if stream changes make sure that only palette changes */
  if (This->pCurStream != pstream) {
    pg = FUNC2(pstream, NULL);
    if (pg == NULL)
      return NULL;
    if (This->pg != NULL) {
      if (FUNC4(pg, This->lpFrame, NULL, 0, 0, -1, -1) != S_OK) {
        FUNC1(pg);
        FUNC3(": IGetFrame_SetFormat failed\n");
        return NULL;
      }
      FUNC1(This->pg);
    }
    This->pg         = pg;
    This->pCurStream = pstream;
  }

  /* now get the decompressed frame */
  This->lpFrame = FUNC0(This->pg, pos);
  if (This->lpFrame != NULL)
    This->sInfo.dwSuggestedBufferSize = This->lpFrame->biSizeImage;

  return This->lpFrame;
}