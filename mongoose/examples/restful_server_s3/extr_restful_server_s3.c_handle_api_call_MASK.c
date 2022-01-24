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
typedef  int /*<<< orphan*/  host ;
typedef  int /*<<< orphan*/  file_name ;
typedef  int /*<<< orphan*/  file_data ;
typedef  int /*<<< orphan*/  bucket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC4(struct mg_connection *nc, struct http_message *hm) {
  char file_name[100], file_data[100], host[100], bucket[100];

  /* Get form variables */
  FUNC0(&hm->body, "file_name", file_name, sizeof(file_name));
  FUNC0(&hm->body, "file_data", file_data, sizeof(file_data));
  FUNC0(&hm->body, "host", host, sizeof(host));
  FUNC0(&hm->body, "bucket", bucket, sizeof(bucket));

  /* Send headers */
  FUNC1(nc, "%s", "HTTP/1.1 200 OK\r\nTransfer-Encoding: chunked\r\n\r\n");

  /* Send body */
  if (file_name[0] == '\0' || file_data[0] == '\0' || bucket[0] == '\0') {
    FUNC2(nc, "bad input");
  } else {
    FUNC3(nc, file_name, file_data, host, bucket);
  }
}