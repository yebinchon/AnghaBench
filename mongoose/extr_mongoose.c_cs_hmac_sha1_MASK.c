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
typedef  int /*<<< orphan*/  tmp_key ;
typedef  int /*<<< orphan*/  cs_sha1_ctx ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void FUNC5(const unsigned char *key, size_t keylen,
                  const unsigned char *data, size_t datalen,
                  unsigned char out[20]) {
  cs_sha1_ctx ctx;
  unsigned char buf1[64], buf2[64], tmp_key[20], i;

  if (keylen > sizeof(buf1)) {
    FUNC1(&ctx);
    FUNC2(&ctx, key, keylen);
    FUNC0(tmp_key, &ctx);
    key = tmp_key;
    keylen = sizeof(tmp_key);
  }

  FUNC4(buf1, 0, sizeof(buf1));
  FUNC4(buf2, 0, sizeof(buf2));
  FUNC3(buf1, key, keylen);
  FUNC3(buf2, key, keylen);

  for (i = 0; i < sizeof(buf1); i++) {
    buf1[i] ^= 0x36;
    buf2[i] ^= 0x5c;
  }

  FUNC1(&ctx);
  FUNC2(&ctx, buf1, sizeof(buf1));
  FUNC2(&ctx, data, datalen);
  FUNC0(out, &ctx);

  FUNC1(&ctx);
  FUNC2(&ctx, buf2, sizeof(buf2));
  FUNC2(&ctx, out, 20);
  FUNC0(out, &ctx);
}