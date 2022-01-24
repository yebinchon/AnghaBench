#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  if_type; int /*<<< orphan*/  if_physaddr; int /*<<< orphan*/  if_physaddrlen; } ;
struct TYPE_6__ {TYPE_1__ ent; } ;
struct TYPE_7__ {TYPE_2__ if_info; } ;
typedef  int /*<<< orphan*/ * PDWORD ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  TYPE_3__ IFInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1( IFInfo *info,
                                   PDWORD len, PBYTE addr, PDWORD type ) {
    *len = info->if_info.ent.if_physaddrlen;
    FUNC0( addr, info->if_info.ent.if_physaddr, *len );
    *type = info->if_info.ent.if_type;
}