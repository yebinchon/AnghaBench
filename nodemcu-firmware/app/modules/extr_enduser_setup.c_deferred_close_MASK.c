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
struct tcp_pcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  force_abort ; 
 int /*<<< orphan*/  handle_remote_close ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_pcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4 (struct tcp_pcb *pcb)
{
  FUNC0("deferred_close");

  FUNC1 (pcb, force_abort, 15); /* ~3sec from now */
  FUNC2 (pcb, handle_remote_close);
  FUNC3 (pcb, 0);
}