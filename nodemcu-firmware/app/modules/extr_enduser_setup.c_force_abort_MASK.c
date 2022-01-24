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
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_ABRT ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC3 (void *arg, struct tcp_pcb *pcb)
{
  FUNC0("force_abort");

  (void)arg;
  FUNC2 (pcb, 0, 0);
  FUNC1 (pcb);
  return ERR_ABRT;
}