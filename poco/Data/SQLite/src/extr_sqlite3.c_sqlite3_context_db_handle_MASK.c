#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* pOut; } ;
typedef  TYPE_2__ sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int /*<<< orphan*/ * db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

sqlite3 *FUNC1(sqlite3_context *p){
  FUNC0( p && p->pOut );
  return p->pOut->db;
}