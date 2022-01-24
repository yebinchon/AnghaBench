#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* filters; scalar_t__ unpackSize; scalar_t__ packSize; scalar_t__ flags; } ;
struct TYPE_7__ {scalar_t__ propsSize; int /*<<< orphan*/  props; scalar_t__ id; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISeqOutStream ;
typedef  TYPE_1__ CXzFilter ;
typedef  TYPE_2__ CXzBlock ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,unsigned int) ; 
 int XZ_BLOCK_HEADER_SIZE_MAX ; 
 int FUNC3 (TYPE_2__ const*) ; 
 scalar_t__ FUNC4 (TYPE_2__ const*) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*) ; 
 scalar_t__ FUNC6 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 

SRes FUNC8(const CXzBlock *p, ISeqOutStream *s)
{
  Byte header[XZ_BLOCK_HEADER_SIZE_MAX];

  unsigned pos = 1;
  int numFilters, i;
  header[pos++] = p->flags;

  if (FUNC4(p)) pos += FUNC6(header + pos, p->packSize);
  if (FUNC5(p)) pos += FUNC6(header + pos, p->unpackSize);
  numFilters = FUNC3(p);
  for (i = 0; i < numFilters; i++)
  {
    const CXzFilter *f = &p->filters[i];
    pos += FUNC6(header + pos, f->id);
    pos += FUNC6(header + pos, f->propsSize);
    FUNC7(header + pos, f->props, f->propsSize);
    pos += f->propsSize;
  }
  while((pos & 3) != 0)
    header[pos++] = 0;
  header[0] = (Byte)(pos >> 2);
  FUNC1(header + pos, FUNC0(header, pos));
  return FUNC2(s, header, pos + 4);
}