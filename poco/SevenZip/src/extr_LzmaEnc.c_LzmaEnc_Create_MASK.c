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
struct TYPE_4__ {void* (* Alloc ) (TYPE_1__*,int) ;} ;
typedef  TYPE_1__ ISzAlloc ;
typedef  void* CLzmaEncHandle ;
typedef  int /*<<< orphan*/  CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (TYPE_1__*,int) ; 

CLzmaEncHandle FUNC2(ISzAlloc *alloc)
{
  void *p;
  p = alloc->Alloc(alloc, sizeof(CLzmaEnc));
  if (p != 0)
    FUNC0((CLzmaEnc *)p);
  return p;
}