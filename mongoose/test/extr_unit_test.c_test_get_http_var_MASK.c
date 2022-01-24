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
struct mg_str {char* p; void* len; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (struct mg_str*,char*,char*,int) ; 
 void* FUNC4 (char*) ; 

__attribute__((used)) static const char *FUNC5(void) {
  char buf[256];
  struct mg_str body;
  body.p = "key1=value1&key2=value2&key3=value%203&key4=value+4";
  body.len = FUNC4(body.p);

  FUNC0(FUNC3(&body, "key1", buf, sizeof(buf)) > 0);
  FUNC2(buf, "value1");
  FUNC0(FUNC3(&body, "KEY1", buf, sizeof(buf)) > 0);
  FUNC2(buf, "value1");
  FUNC0(FUNC3(&body, "key2", buf, sizeof(buf)) > 0);
  FUNC2(buf, "value2");
  FUNC0(FUNC3(&body, "key3", buf, sizeof(buf)) > 0);
  FUNC2(buf, "value 3");
  FUNC0(FUNC3(&body, "key4", buf, sizeof(buf)) > 0);
  FUNC2(buf, "value 4");

  FUNC1(FUNC3(&body, "key1", NULL, sizeof(buf)), -2);
  FUNC1(FUNC3(&body, "key1", buf, 0), -2);
  FUNC1(FUNC3(&body, NULL, buf, sizeof(buf)), -1);
  FUNC1(FUNC3(&body, "key1", buf, 1), -3);

  body.p = "key=broken%2";
  body.len = FUNC4(body.p);
  FUNC0(FUNC3(&body, "key", buf, sizeof(buf)) < 0);

  body.p = "key=broken%2x";
  body.len = FUNC4(body.p);
  FUNC0(FUNC3(&body, "key", buf, sizeof(buf)) < 0);

  FUNC1(FUNC3(&body, "inexistent", buf, sizeof(buf)), -4);

  return NULL;
}