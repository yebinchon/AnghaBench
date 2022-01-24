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
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*) ; 

__attribute__((used)) static struct mg_connection *FUNC2() {
  struct mg_connection *nc = (struct mg_connection *) FUNC0(1, sizeof(*nc));
  FUNC1(nc);
  return nc;
}