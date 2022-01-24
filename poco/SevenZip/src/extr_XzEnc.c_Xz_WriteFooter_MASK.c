#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int UInt64 ;
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_5__ {size_t totalSize; size_t unpackSize; } ;
struct TYPE_4__ {size_t numBlocks; int flags; TYPE_2__* blocks; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISeqOutStream ;
typedef  TYPE_1__ CXzStream ;
typedef  TYPE_2__ CXzBlockSizes ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRC_INIT_VAL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XZ_FOOTER_SIG ; 
 int /*<<< orphan*/  XZ_FOOTER_SIG_SIZE ; 
 unsigned int FUNC6 (scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SRes FUNC8(CXzStream *p, ISeqOutStream *s)
{
  Byte buf[32];
  UInt64 globalPos;
  {
    UInt32 crc = CRC_INIT_VAL;
    unsigned pos = 1 + FUNC6(buf + 1, p->numBlocks);
    size_t i;

    globalPos = pos;
    buf[0] = 0;
    FUNC2(FUNC5(s, buf, pos, &crc));
    for (i = 0; i < p->numBlocks; i++)
    {
      const CXzBlockSizes *block = &p->blocks[i];
      pos = FUNC6(buf, block->totalSize);
      pos += FUNC6(buf + pos, block->unpackSize);
      globalPos += pos;
      FUNC2(FUNC5(s, buf, pos, &crc));
    }
    pos = ((unsigned)globalPos & 3);
    if (pos != 0)
    {
      buf[0] = buf[1] = buf[2] = 0;
      FUNC2(FUNC5(s, buf, 4 - pos, &crc));
      globalPos += 4 - pos;
    }
    {
      FUNC3(buf, FUNC0(crc));
      FUNC2(FUNC4(s, buf, 4));
      globalPos += 4;
    }
  }

  {
    UInt32 indexSize = (UInt32)((globalPos >> 2) - 1);
    FUNC3(buf + 4, indexSize);
    buf[8] = (Byte)(p->flags >> 8);
    buf[9] = (Byte)(p->flags & 0xFF);
    FUNC3(buf, FUNC1(buf + 4, 6));
    FUNC7(buf + 10, XZ_FOOTER_SIG, XZ_FOOTER_SIG_SIZE);
    return FUNC4(s, buf, 12);
  }
}