#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_5__ {int /*<<< orphan*/  L; int /*<<< orphan*/  Z; int /*<<< orphan*/  b; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_1__ LoadState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static TString* FUNC6(LoadState* S)
{
 int32_t size;
 FUNC1(S,size);
 if (size==0)
  return NULL;
 else
 {
  char* s;
  if (!FUNC3(S->Z)) {
   s = FUNC5(S->L,S->b,size);
   FUNC0(S,s,size);
   return FUNC2(S->L,s,size-1); /* remove trailing zero */
  } else {
   s = (char*)FUNC4(S->Z);
   FUNC0(S,NULL,size);
   return FUNC2(S->L,s,size-1);
  }
 }
}