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
struct pbuf {int /*<<< orphan*/  tot_len; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  FUNC1 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC6 (void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err)
{
  FUNC0("handle_remote_close");

  (void)arg; (void)err;
  if (p) /* server sent us data, just ACK and move on */
  {
    FUNC5 (pcb, p->tot_len);
    FUNC1 (p);
  }
  else /* hey, remote end closed, we can do a soft close safely, yay! */
  {
    FUNC4 (pcb, 0);
    FUNC3 (pcb, 0, 0);
    FUNC2 (pcb);
  }
  return ERR_OK;
}