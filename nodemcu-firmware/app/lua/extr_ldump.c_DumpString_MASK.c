#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ strsize_t ;
struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_6__ {TYPE_1__ tsv; } ;
typedef  TYPE_2__ TString ;
typedef  int /*<<< orphan*/  DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__ const*) ; 

__attribute__((used)) static void FUNC3(const TString* s, DumpState* D)
{
 if (s==NULL || FUNC2(s)==NULL)
 {
  strsize_t size=0;
  FUNC1(size,D);
 }
 else
 {
  strsize_t size=( strsize_t )s->tsv.len+1;		/* include trailing '\0' */
  FUNC1(size,D);
  FUNC0(FUNC2(s),size,D);
 }
}