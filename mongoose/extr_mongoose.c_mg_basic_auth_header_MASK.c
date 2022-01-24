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
struct mg_str {char* p; int len; } ;
struct mbuf {int dummy; } ;
struct cs_base64_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs_base64_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_base64_ctx*,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_base64_ctx*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mg_mbuf_append_base64_putc ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void FUNC5(const struct mg_str user, const struct mg_str pass,
                          struct mbuf *buf) {
  const char *header_prefix = "Authorization: Basic ";
  const char *header_suffix = "\r\n";

  struct cs_base64_ctx ctx;
  FUNC1(&ctx, mg_mbuf_append_base64_putc, buf);

  FUNC3(buf, header_prefix, FUNC4(header_prefix));

  FUNC2(&ctx, user.p, user.len);
  if (pass.len > 0) {
    FUNC2(&ctx, ":", 1);
    FUNC2(&ctx, pass.p, pass.len);
  }
  FUNC0(&ctx);
  FUNC3(buf, header_suffix, FUNC4(header_suffix));
}