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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 size_t FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char*,size_t) ; 

__attribute__((used)) static void FUNC2(struct mg_connection *nc, FILE *fp) {
  char buf[BUFSIZ];
  size_t n;
  while ((n = FUNC0(buf, 1, sizeof(buf), fp)) > 0) {
    FUNC1(nc, buf, n);
  }
}