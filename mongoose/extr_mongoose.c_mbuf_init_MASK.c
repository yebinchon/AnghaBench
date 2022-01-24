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
struct mbuf {int /*<<< orphan*/ * buf; scalar_t__ size; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,size_t) ; 

void FUNC1(struct mbuf *mbuf, size_t initial_size) {
  mbuf->len = mbuf->size = 0;
  mbuf->buf = NULL;
  FUNC0(mbuf, initial_size);
}