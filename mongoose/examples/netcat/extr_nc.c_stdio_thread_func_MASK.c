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
struct mg_mgr {int dummy; } ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  on_stdin_read ; 
 int s_received_signal ; 

__attribute__((used)) static void *FUNC2(void *param) {
  struct mg_mgr *mgr = (struct mg_mgr *) param;
  int ch;

  // Read stdin until EOF character by character, sending them to the mgr
  while ((ch = FUNC0()) != EOF) {
    FUNC1(mgr, on_stdin_read, &ch, sizeof(ch));
  }
  s_received_signal = 1;

  return NULL;
}