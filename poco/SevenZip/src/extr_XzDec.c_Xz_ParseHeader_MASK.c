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
typedef  int /*<<< orphan*/  SRes ;
typedef  scalar_t__ CXzStreamFlags ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  SZ_ERROR_NO_ARCHIVE ; 
 int /*<<< orphan*/  SZ_ERROR_UNSUPPORTED ; 
 int /*<<< orphan*/  SZ_OK ; 
 int XZ_SIG_SIZE ; 
 int XZ_STREAM_FLAGS_SIZE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

SRes FUNC4(CXzStreamFlags *p, const Byte *buf)
{
  *p = (CXzStreamFlags)FUNC1(buf + XZ_SIG_SIZE);
  if (FUNC0(buf + XZ_SIG_SIZE, XZ_STREAM_FLAGS_SIZE) !=
      FUNC2(buf + XZ_SIG_SIZE + XZ_STREAM_FLAGS_SIZE))
    return SZ_ERROR_NO_ARCHIVE;
  return FUNC3(*p) ? SZ_OK : SZ_ERROR_UNSUPPORTED;
}