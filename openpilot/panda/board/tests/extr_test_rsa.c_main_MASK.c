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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LEN ; 
 int /*<<< orphan*/  RSANUMBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,char*,int) ; 
 int SHA_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int*,int,char*) ; 
 scalar_t__ buf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  rsa_key ; 

int FUNC6() {
  FILE *f = FUNC3("../obj/panda.bin", "rb");
  int tlen = FUNC4(buf, 1, MAX_LEN, f);
  FUNC2(f);
  FUNC5("read %d\n", tlen);
  uint32_t *_app_start = (uint32_t *)buf;

  int len = _app_start[0];
  char digest[SHA_DIGEST_SIZE];
  FUNC1(&_app_start[1], len-4, digest);
  FUNC5("SHA hash done\n");

  if (!FUNC0(&rsa_key, ((void*)&_app_start[0]) + len, RSANUMBYTES, digest, SHA_DIGEST_SIZE)) {
    FUNC5("RSA fail\n");
  } else {
    FUNC5("RSA match!!!\n");
  }

  return 0;
}