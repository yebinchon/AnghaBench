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
typedef  int /*<<< orphan*/  chunk_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char const*,int) ; 
 int FUNC1 (char*,int,char*,unsigned long) ; 

void FUNC2(struct mg_connection *nc, const char *buf, size_t len) {
  char chunk_size[50];
  int n;

  n = FUNC1(chunk_size, sizeof(chunk_size), "%lX\r\n", (unsigned long) len);
  FUNC0(nc, chunk_size, n);
  FUNC0(nc, buf, len);
  FUNC0(nc, "\r\n", 2);
}