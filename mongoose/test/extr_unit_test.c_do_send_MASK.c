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
struct simple_data {char* to_send; } ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,char*) ; 

__attribute__((used)) static void FUNC1(struct simple_data *d, struct mg_connection *nc) {
  if (d->to_send[0] != '\0') {
    FUNC0(nc, "%s", d->to_send);
  }
}