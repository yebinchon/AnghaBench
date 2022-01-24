#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mg_connection {scalar_t__ user_data; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {size_t len; scalar_t__ p; } ;
struct http_message {TYPE_1__ body; } ;
typedef  int /*<<< orphan*/  sig1 ;
typedef  int /*<<< orphan*/  cs_md5_ctx ;

/* Variables and functions */
#define  MG_EV_CONNECT 130 
#define  MG_EV_HTTP_CHUNK 129 
#define  MG_EV_HTTP_REPLY 128 
 int /*<<< orphan*/  MG_F_DELETE_CHUNK ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 char* FUNC5 (char*,size_t*) ; 

__attribute__((used)) static void FUNC6(struct mg_connection *c, int ev, void *ev_data) {
  static cs_md5_ctx c1, c2;
  struct http_message *hm = (struct http_message *) ev_data;

  switch (ev) {
    case MG_EV_CONNECT:
      FUNC1(&c1);
      FUNC1(&c2);
      break;
    case MG_EV_HTTP_CHUNK:
      FUNC2(&c1, (const unsigned char *) hm->body.p, hm->body.len);
      c->flags |= MG_F_DELETE_CHUNK;
      break;
    case MG_EV_HTTP_REPLY: {
      unsigned char sig1[16], sig2[sizeof(sig1)];
      size_t size;
      char *data = FUNC5("unit_test.c", &size);
      if (data != NULL) FUNC2(&c2, (const unsigned char *) data, size);
      FUNC3(data);
      FUNC0(sig1, &c1);
      FUNC0(sig2, &c2);
      *(int *) c->user_data = (FUNC4(sig1, sig2, sizeof(sig1)) == 0) ? 1 : 2;
      break;
    }
  }
}