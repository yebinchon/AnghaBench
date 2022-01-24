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
struct http_message {int /*<<< orphan*/  method; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC1(const struct http_message *hm) {
  return FUNC0(&hm->method, "MKCOL") == 0 || FUNC0(&hm->method, "PUT") == 0;
}