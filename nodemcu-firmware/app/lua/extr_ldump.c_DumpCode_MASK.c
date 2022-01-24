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
struct TYPE_3__ {int sizecode; int /*<<< orphan*/ * code; } ;
typedef  TYPE_1__ Proto ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  int /*<<< orphan*/  DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(const Proto *f, DumpState* D)
{
 FUNC2(f->sizecode,D);
 char buf[10];
 int i;
 FUNC0(D);
 for (i=0; i<f->sizecode; i++)
 {
  FUNC4(buf,&f->code[i],sizeof(Instruction));
  FUNC3(buf,sizeof(Instruction),D);
  FUNC1(buf,sizeof(Instruction),D);
 }
}