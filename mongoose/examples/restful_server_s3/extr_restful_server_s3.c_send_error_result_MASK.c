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
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mg_connection *nc, const char *msg) {
  FUNC0(nc, "Error: %s", msg);
  FUNC1(nc, "", 0); /* Send empty chunk, the end of response */
}