#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* Skip ) (TYPE_1__*,size_t) ;int /*<<< orphan*/  (* Look ) (TYPE_1__*,void const**,size_t*) ;} ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ ILookInStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t) ; 

SRes FUNC4(ILookInStream *stream, void *buf, size_t *size)
{
  const void *lookBuf;
  if (*size == 0)
    return SZ_OK;
  FUNC0(stream->Look(stream, &lookBuf, size));
  FUNC1(buf, lookBuf, *size);
  return stream->Skip(stream, *size);
}