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
struct mbuf {int dummy; } ;
struct cs_base64_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs_base64_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_base64_ctx*,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_base64_ctx*,char const*,size_t) ; 
 int /*<<< orphan*/  mg_mbuf_append_base64_putc ; 

void FUNC3(struct mbuf *mbuf, const void *data, size_t len) {
  struct cs_base64_ctx ctx;
  FUNC1(&ctx, mg_mbuf_append_base64_putc, mbuf);
  FUNC2(&ctx, (const char *) data, len);
  FUNC0(&ctx);
}