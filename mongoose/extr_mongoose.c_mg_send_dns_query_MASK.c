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
typedef  int /*<<< orphan*/  uint16_t ;
struct mg_dns_resource_record {int rtype; int rclass; int /*<<< orphan*/  kind; } ;
struct mg_dns_message {int flags; int num_questions; scalar_t__ transaction_id; struct mg_dns_resource_record* questions; } ;
struct mg_connection {int flags; } ;
struct mbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  MG_DNS_QUESTION ; 
 int /*<<< orphan*/  FUNC2 (struct mg_dns_message*) ; 
 int MG_F_UDP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct mbuf*,struct mg_dns_resource_record*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,int /*<<< orphan*/ ,struct mg_dns_message*) ; 
 scalar_t__ mg_dns_tid ; 
 int /*<<< orphan*/  FUNC9 (struct mg_connection*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

void FUNC11(struct mg_connection *nc, const char *name,
                       int query_type) {
  struct mg_dns_message *msg =
      (struct mg_dns_message *) FUNC1(1, sizeof(*msg));
  struct mbuf pkt;
  struct mg_dns_resource_record *rr = &msg->questions[0];

  FUNC0(("%s %d", name, query_type));

  FUNC5(&pkt, 64 /* Start small, it'll grow as needed. */);

  msg->transaction_id = ++mg_dns_tid;
  msg->flags = 0x100;
  msg->num_questions = 1;

  FUNC8(&pkt, 0, msg);

  rr->rtype = query_type;
  rr->rclass = 1; /* Class: inet */
  rr->kind = MG_DNS_QUESTION;

  if (FUNC7(&pkt, rr, name, FUNC10(name), NULL, 0) == -1) {
    /* TODO(mkm): return an error code */
    goto cleanup; /* LCOV_EXCL_LINE */
  }

  /* TCP DNS requires messages to be prefixed with len */
  if (!(nc->flags & MG_F_UDP)) {
    uint16_t len = FUNC3((uint16_t) pkt.len);
    FUNC6(&pkt, 0, &len, 2);
  }

  FUNC9(nc, pkt.buf, pkt.len);
  FUNC4(&pkt);

cleanup:
  FUNC2(msg);
}