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
struct mg_str {int len; char* p; } ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static struct mg_str FUNC2(struct mg_connection *nc,
                                  struct mg_str fname) {
  struct mg_str lfn;
  lfn.len = fname.len + 3;
  lfn.p = FUNC0(lfn.len);
  FUNC1((char *) lfn.p, "SL:", 3);
  FUNC1((char *) lfn.p + 3, fname.p, fname.len);
  return lfn;
}