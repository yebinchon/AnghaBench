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
struct mg_http_proto_data_file {int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_http_proto_data_file*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mg_http_proto_data_file *d) {
  if (d != NULL) {
    if (d->fp != NULL) {
      FUNC0(d->fp);
    }
    FUNC1(d, 0, sizeof(struct mg_http_proto_data_file));
  }
}