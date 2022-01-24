#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mg_mgr {int /*<<< orphan*/ * nameserver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

void FUNC2(struct mg_mgr *mgr, const char *nameserver) {
  FUNC0((char *) mgr->nameserver);
  mgr->nameserver = NULL;
  if (nameserver != NULL) {
    mgr->nameserver = FUNC1(nameserver);
  }
}