#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int cur_pos_data; int capacity; TYPE_2__* pxo; void* pdata; } ;
typedef  TYPE_3__ parse_buffer ;
typedef  int ULONG ;
struct TYPE_6__ {TYPE_1__* root; } ;
struct TYPE_5__ {void* pdata; } ;
typedef  void* LPBYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 

__attribute__((used)) static BOOL FUNC4(parse_buffer * buf, ULONG size)
{
  if ((buf->cur_pos_data + size) > buf->capacity)
  {
    LPBYTE pdata;
    ULONG new_capacity = buf->capacity ? 2 * buf->capacity : 100000;

    pdata = FUNC1(FUNC0(), 0, new_capacity);
    if (!pdata)
      return FALSE;
    FUNC3(pdata, buf->pdata, buf->cur_pos_data);
    FUNC2(FUNC0(), 0, buf->pdata);
    buf->capacity = new_capacity;
    buf->pdata = pdata;
    buf->pxo->root->pdata = pdata;
  }
  return TRUE;
}