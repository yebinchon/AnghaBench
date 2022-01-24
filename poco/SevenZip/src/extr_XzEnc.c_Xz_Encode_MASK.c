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
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISeqOutStream ;
typedef  int /*<<< orphan*/  ISeqInStream ;
typedef  int /*<<< orphan*/  ICompressProgress ;
typedef  int /*<<< orphan*/  CXzStream ;
typedef  int /*<<< orphan*/  CXzProps ;
typedef  int /*<<< orphan*/  CLzma2WithFilters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ SZ_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_Alloc ; 
 int /*<<< orphan*/  g_BigAlloc ; 

SRes FUNC6(ISeqOutStream *outStream, ISeqInStream *inStream,
    const CXzProps *props, ICompressProgress *progress)
{
  SRes res;
  CXzStream xz;
  CLzma2WithFilters lzmaf;
  FUNC4(&xz);
  FUNC0(&lzmaf, &g_Alloc, &g_BigAlloc);
  res = FUNC1(&lzmaf);
  if (res == SZ_OK)
    res = FUNC3(&xz, &lzmaf, outStream, inStream, props, progress);
  FUNC2(&lzmaf);
  FUNC5(&xz, &g_Alloc);
  return res;
}