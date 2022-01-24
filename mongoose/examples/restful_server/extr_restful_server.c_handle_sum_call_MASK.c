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
struct mg_connection {int dummy; } ;
struct http_message {int /*<<< orphan*/  body; } ;
typedef  int /*<<< orphan*/  n2 ;
typedef  int /*<<< orphan*/  n1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char*,double) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 double FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mg_connection *nc, struct http_message *hm) {
  char n1[100], n2[100];
  double result;

  /* Get form variables */
  FUNC0(&hm->body, "n1", n1, sizeof(n1));
  FUNC0(&hm->body, "n2", n2, sizeof(n2));

  /* Send headers */
  FUNC1(nc, "%s", "HTTP/1.1 200 OK\r\nTransfer-Encoding: chunked\r\n\r\n");

  /* Compute the result and send it back as a JSON object */
  result = FUNC4(n1, NULL) + FUNC4(n2, NULL);
  FUNC2(nc, "{ \"result\": %lf }", result);
  FUNC3(nc, "", 0); /* Send empty chunk, the end of response */
}