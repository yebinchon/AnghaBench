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
typedef  size_t uint8_t ;

/* Variables and functions */
 size_t const* data ; 
 size_t dataLen ; 
 size_t dictionaryLen ; 
 int /*<<< orphan*/  FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (size_t**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t) ; 

int FUNC3(const uint8_t *d, size_t size) {
  size_t comprLen = 0;
  uint8_t *compr;

  /* Discard inputs larger than 100Kb. */
  static size_t kMaxSize = 100 * 1024;

  if (size < 1 || size > kMaxSize)
    return 0;

  data = d;
  dataLen = size;

  /* Set up the contents of the dictionary.  The size of the dictionary is
     intentionally selected to be of unusual size.  To help cover more corner
     cases, the size of the dictionary is read from the input data.  */
  dictionaryLen = data[0];
  if (dictionaryLen > dataLen)
    dictionaryLen = dataLen;

  FUNC1(&compr, &comprLen);
  FUNC2(compr, comprLen);

  FUNC0(compr);

  /* This function must return 0. */
  return 0;
}