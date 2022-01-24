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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned char const*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,size_t,unsigned char*) ; 

int FUNC5(const unsigned char *s, size_t length,
		    unsigned char *buf, size_t buflen) {
  int res;
  size_t written;

  if (!buflen) {
    FUNC0("make_decoded_option(): buflen is 0!\n");
    return -1;
  }

  res = FUNC2(s, length);
  if (res < 0)
    return -1;

  /* write option header using delta 0 and length res */
  // written = coap_opt_setheader(buf, buflen, 0, res);
  written = FUNC3(0, res, buf, buflen);

  FUNC1(written <= buflen);

  if (!written)			/* encoding error */
    return -1;

  buf += written;		/* advance past option type/length */
  buflen -= written;

  if (buflen < (size_t)res) {
    FUNC0("buffer too small for option\n");
    return -1;
  }

  FUNC4(s, length, buf);

  return written + res;
}