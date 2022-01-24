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
typedef  size_t uint32_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t const*,size_t) ; 
 scalar_t__ FUNC1 (size_t,size_t,size_t) ; 
 size_t FUNC2 (size_t,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (size_t,size_t const*,size_t) ; 
 scalar_t__ FUNC5 (size_t,size_t,size_t) ; 
 size_t FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (size_t,size_t,size_t) ; 
 size_t FUNC8 (size_t,size_t const*,size_t) ; 

int FUNC9(const uint8_t *data, size_t dataLen) {
  uint32_t crc0 = FUNC4(0L, NULL, 0);
  uint32_t crc1 = crc0;
  uint32_t crc2 = crc0;
  uint32_t adler0 = FUNC0(0L, NULL, 0);
  uint32_t adler1 = adler0;
  uint32_t adler2 = adler0;
  /* Checksum with a buffer of size equal to the first byte in the input. */
  uint32_t buffSize = data[0];
  uint32_t offset = 0;
  uint32_t op;

  /* Discard inputs larger than 1Mb. */
  static size_t kMaxSize = 1024 * 1024;
  if (dataLen < 1 || dataLen > kMaxSize)
    return 0;

  /* Make sure the buffer has at least a byte. */
  if (buffSize == 0)
    ++buffSize;

  /* CRC32 */
  op = FUNC6(buffSize);
  for (offset = 0; offset + buffSize <= dataLen; offset += buffSize) {
    uint32_t crc3 = FUNC8(crc0, data + offset, buffSize);
    uint32_t crc4 = FUNC7(crc1, crc3, op);
    crc1 = FUNC8(crc1, data + offset, buffSize);
    FUNC3(crc1 == crc4);
  }
  crc1 = FUNC8(crc1, data + offset, dataLen % buffSize);

  crc2 = FUNC4(crc2, data, (uint32_t) dataLen);

  FUNC3(crc1 == crc2);
  FUNC3(FUNC5(crc1, crc2, dataLen) ==
         FUNC5(crc1, crc1, dataLen));

  /* Fast CRC32 combine. */
  op = FUNC6(dataLen);
  FUNC3(FUNC7(crc1, crc2, op) ==
         FUNC7(crc2, crc1, op));
  FUNC3(FUNC5(crc1, crc2, dataLen) ==
         FUNC7(crc2, crc1, op));

  /* Adler32 */
  for (offset = 0; offset + buffSize <= dataLen; offset += buffSize)
    adler1 = FUNC2(adler1, data + offset, buffSize);
  adler1 = FUNC2(adler1, data + offset, dataLen % buffSize);

  adler2 = FUNC0(adler2, data, (uint32_t) dataLen);

  FUNC3(adler1 == adler2);
  FUNC3(FUNC1(adler1, adler2, dataLen) ==
         FUNC1(adler1, adler1, dataLen));

  /* This function must return 0. */
  return 0;
}