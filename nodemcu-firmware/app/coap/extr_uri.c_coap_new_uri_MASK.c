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
typedef  int /*<<< orphan*/  coap_uri_t ;

/* Variables and functions */
 char* FUNC0 (unsigned char*) ; 
 scalar_t__ FUNC1 (char*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char const*,unsigned int) ; 

coap_uri_t * FUNC5(const unsigned char *uri, unsigned int length) {
  unsigned char *result;

  result = (unsigned char *)FUNC3(length + 1 + sizeof(coap_uri_t));

  if (!result)
    return NULL;

  FUNC4(FUNC0(result), uri, length);
  FUNC0(result)[length] = '\0'; /* make it zero-terminated */

  if (FUNC1(FUNC0(result), length, (coap_uri_t *)result) < 0) {
    FUNC2(result);
    return NULL;
  }
  return (coap_uri_t *)result;
}