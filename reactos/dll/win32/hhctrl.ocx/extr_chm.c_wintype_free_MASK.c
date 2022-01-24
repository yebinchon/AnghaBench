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
struct TYPE_3__ {void* paInfoTypes; scalar_t__ pszCustomTabs; scalar_t__ pszUrlJump2; scalar_t__ pszUrlJump1; scalar_t__ pszJump2; scalar_t__ pszJump1; scalar_t__ pszHome; scalar_t__ pszFile; scalar_t__ pszIndex; scalar_t__ pszToc; scalar_t__ pszCaption; scalar_t__ pszType; } ;
typedef  TYPE_1__ HH_WINTYPEW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static inline void FUNC1(HH_WINTYPEW *wintype)
{
    FUNC0((void *)wintype->pszType);
    FUNC0((void *)wintype->pszCaption);
    FUNC0(wintype->paInfoTypes);
    FUNC0((void *)wintype->pszToc);
    FUNC0((void *)wintype->pszIndex);
    FUNC0((void *)wintype->pszFile);
    FUNC0((void *)wintype->pszHome);
    FUNC0((void *)wintype->pszJump1);
    FUNC0((void *)wintype->pszJump2);
    FUNC0((void *)wintype->pszUrlJump1);
    FUNC0((void *)wintype->pszUrlJump2);
    FUNC0((void *)wintype->pszCustomTabs);
}