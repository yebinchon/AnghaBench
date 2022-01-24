#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_Writer ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int strip; int status; scalar_t__ wrote; int /*<<< orphan*/  target; void* data; int /*<<< orphan*/  writer; int /*<<< orphan*/ * L; } ;
typedef  int /*<<< orphan*/  Proto ;
typedef  int /*<<< orphan*/  DumpTargetInfo ;
typedef  TYPE_1__ DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2 (lua_State* L, const Proto* f, lua_Writer w, void* data, int strip, DumpTargetInfo target)
{
 DumpState D;
 D.L=L;
 D.writer=w;
 D.data=data;
 D.strip=strip;
 D.status=0;
 D.target=target;
 D.wrote=0;
 FUNC1(&D);
 FUNC0(f,NULL,&D);
 return D.status;
}