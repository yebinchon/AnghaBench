#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt64 ;
struct TYPE_3__ {int /*<<< orphan*/  (* Skip ) (void*,size_t) ;int /*<<< orphan*/  (* Look ) (void*,void const**,size_t*) ;} ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ ILookInStream ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_INPUT_EOF ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t) ; 

__attribute__((used)) static SRes FUNC4(UInt64 inSize, ILookInStream *inStream, Byte *outBuffer)
{
  while (inSize > 0)
  {
    void *inBuf;
    size_t curSize = (1 << 18);
    if (curSize > inSize)
      curSize = (size_t)inSize;
    FUNC0(inStream->Look((void *)inStream, (const void **)&inBuf, &curSize));
    if (curSize == 0)
      return SZ_ERROR_INPUT_EOF;
    FUNC1(outBuffer, inBuf, curSize);
    outBuffer += curSize;
    inSize -= curSize;
    FUNC0(inStream->Skip((void *)inStream, curSize));
  }
  return SZ_OK;
}