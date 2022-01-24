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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,size_t) ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  const* data ; 
 size_t dataLen ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t) ; 

int FUNC5(const uint8_t *d, size_t size) {
  size_t comprLen = 100 + 2 * FUNC1(size);
  size_t uncomprLen = size;
  uint8_t *compr, *uncompr;

  /* Discard inputs larger than 1Mb. */
  static size_t kMaxSize = 1024 * 1024;

  // This test requires at least 3 bytes of input data.
  if (size <= 3 || size > kMaxSize)
    return 0;

  data = d;
  dataLen = size;
  compr = (uint8_t *)FUNC0(1, comprLen);
  uncompr = (uint8_t *)FUNC0(1, uncomprLen);

  FUNC3(compr, &comprLen);
  FUNC4(compr, comprLen, uncompr, uncomprLen);

  FUNC2(compr);
  FUNC2(uncompr);

  /* This function must return 0. */
  return 0;
}