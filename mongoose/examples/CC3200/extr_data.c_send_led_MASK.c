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

/* Variables and functions */
 int /*<<< orphan*/  WEBSOCKET_OP_TEXT ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,int /*<<< orphan*/ ,char*,double,unsigned char) ; 

__attribute__((used)) static void FUNC1(struct mg_connection *nc, double ts, unsigned char led) {
  if (ts == 0) return;
  FUNC0(nc, WEBSOCKET_OP_TEXT,
                            "{\"t\": 1, \"ts\": %lf, \"v\": %d}", ts, led);
}