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
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  p; } ;
struct mg_http_multipart_part {TYPE_1__ data; } ;
struct mg_connection {int /*<<< orphan*/ * user_data; int /*<<< orphan*/  flags; } ;
struct file_writer_data {int /*<<< orphan*/ * fp; int /*<<< orphan*/  bytes_written; } ;

/* Variables and functions */
#define  MG_EV_HTTP_PART_BEGIN 130 
#define  MG_EV_HTTP_PART_DATA 129 
#define  MG_EV_HTTP_PART_END 128 
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 struct file_writer_data* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file_writer_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*,char*,...) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct mg_connection *nc, int ev, void *p) {
  struct file_writer_data *data = (struct file_writer_data *) nc->user_data;
  struct mg_http_multipart_part *mp = (struct mg_http_multipart_part *) p;

  switch (ev) {
    case MG_EV_HTTP_PART_BEGIN: {
      if (data == NULL) {
        data = FUNC0(1, sizeof(struct file_writer_data));
        data->fp = FUNC6();
        data->bytes_written = 0;

        if (data->fp == NULL) {
          FUNC5(nc, "%s",
                    "HTTP/1.1 500 Failed to open a file\r\n"
                    "Content-Length: 0\r\n\r\n");
          nc->flags |= MG_F_SEND_AND_CLOSE;
          FUNC2(data);
          return;
        }
        nc->user_data = (void *) data;
      }
      break;
    }
    case MG_EV_HTTP_PART_DATA: {
      if (FUNC4(mp->data.p, 1, mp->data.len, data->fp) != mp->data.len) {
        FUNC5(nc, "%s",
                  "HTTP/1.1 500 Failed to write to a file\r\n"
                  "Content-Length: 0\r\n\r\n");
        nc->flags |= MG_F_SEND_AND_CLOSE;
        return;
      }
      data->bytes_written += mp->data.len;
      break;
    }
    case MG_EV_HTTP_PART_END: {
      FUNC5(nc,
                "HTTP/1.1 200 OK\r\n"
                "Content-Type: text/plain\r\n"
                "Connection: close\r\n\r\n"
                "Written %ld of POST data to a temp file\n\n",
                (long) FUNC3(data->fp));
      nc->flags |= MG_F_SEND_AND_CLOSE;
      FUNC1(data->fp);
      FUNC2(data);
      nc->user_data = NULL;
      break;
    }
  }
}