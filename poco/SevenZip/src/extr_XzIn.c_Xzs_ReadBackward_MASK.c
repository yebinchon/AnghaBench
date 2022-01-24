#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UInt64 ;
struct TYPE_25__ {scalar_t__ startOffset; } ;
struct TYPE_24__ {scalar_t__ num; scalar_t__ numAllocated; TYPE_5__* streams; } ;
struct TYPE_23__ {scalar_t__ (* Progress ) (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_22__ {scalar_t__ (* Seek ) (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_21__ {int /*<<< orphan*/  (* Free ) (TYPE_1__*,TYPE_5__*) ;scalar_t__ (* Alloc ) (TYPE_1__*,size_t) ;} ;
typedef  scalar_t__ SRes ;
typedef  scalar_t__ Int64 ;
typedef  TYPE_1__ ISzAlloc ;
typedef  TYPE_2__ ILookInStream ;
typedef  TYPE_3__ ICompressProgress ;
typedef  TYPE_4__ CXzs ;
typedef  TYPE_5__ CXzStream ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ SZ_ERROR_MEM ; 
 scalar_t__ SZ_ERROR_PROGRESS ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  SZ_SEEK_END ; 
 int /*<<< orphan*/  SZ_SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*,TYPE_2__*,scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 

SRes FUNC9(CXzs *p, ILookInStream *stream, Int64 *startOffset, ICompressProgress *progress, ISzAlloc *alloc)
{
  Int64 endOffset = 0;
  FUNC0(stream->Seek(stream, &endOffset, SZ_SEEK_END));
  *startOffset = endOffset;
  for (;;)
  {
    CXzStream st;
    SRes res;
    FUNC1(&st);
    res = FUNC2(&st, stream, startOffset, alloc);
    st.startOffset = *startOffset;
    FUNC0(res);
    if (p->num == p->numAllocated)
    {
      size_t newNum = p->num + p->num / 4 + 1;
      Byte *data = (Byte *)alloc->Alloc(alloc, newNum * sizeof(CXzStream));
      if (data == 0)
        return SZ_ERROR_MEM;
      p->numAllocated = newNum;
      FUNC3(data, p->streams, p->num * sizeof(CXzStream));
      alloc->Free(alloc, p->streams);
      p->streams = (CXzStream *)data;
    }
    p->streams[p->num++] = st;
    if (*startOffset == 0)
      break;
    FUNC0(stream->Seek(stream, startOffset, SZ_SEEK_SET));
    if (progress && progress->Progress(progress, endOffset - *startOffset, (UInt64)(Int64)-1) != SZ_OK)
      return SZ_ERROR_PROGRESS;
  }
  return SZ_OK;
}