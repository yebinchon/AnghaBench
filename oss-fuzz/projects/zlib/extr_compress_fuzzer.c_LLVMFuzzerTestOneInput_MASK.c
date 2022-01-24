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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  const* data ; 
 size_t dataLen ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(const uint8_t *d, size_t size) {
  /* compressBound does not provide enough space for low compression levels. */
  size_t comprLen = 100 + 2 * FUNC3(size);
  size_t uncomprLen = size;
  uint8_t *compr, *uncompr;

  /* Discard inputs larger than 1Mb. */
  static size_t kMaxSize = 1024 * 1024;

  if (size < 1 || size > kMaxSize)
    return 0;

  data = d;
  dataLen = size;
  compr = (uint8_t *)FUNC0(1, comprLen);
  uncompr = (uint8_t *)FUNC0(1, uncomprLen);

  FUNC1(compr, comprLen, uncompr, uncomprLen, 1);
  FUNC1(compr, comprLen, uncompr, uncomprLen, 3);
  FUNC1(compr, comprLen, uncompr, uncomprLen, 6);
  FUNC1(compr, comprLen, uncompr, uncomprLen, 7);

  FUNC2(compr, comprLen);

  FUNC4(compr);
  FUNC4(uncompr);

  /* This function must return 0. */
  return 0;
}