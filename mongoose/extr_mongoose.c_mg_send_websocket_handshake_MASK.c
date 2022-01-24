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
struct mg_str {int dummy; } ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 struct mg_str MG_NULL_STR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,int /*<<< orphan*/ ,struct mg_str,struct mg_str,int /*<<< orphan*/ ,struct mg_str,struct mg_str) ; 

void FUNC2(struct mg_connection *nc, const char *path,
                                 const char *extra_headers) {
  struct mg_str null_str = MG_NULL_STR;
  FUNC1(
      nc, FUNC0(path), null_str /* host */, null_str /* protocol */,
      FUNC0(extra_headers), null_str /* user */, null_str /* pass */);
}