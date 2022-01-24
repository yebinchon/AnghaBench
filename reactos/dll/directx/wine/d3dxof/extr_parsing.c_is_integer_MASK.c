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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_3__ {int rem_bytes; char* buffer; scalar_t__ value; } ;
typedef  TYPE_1__ parse_buffer ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 size_t FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int*) ; 

__attribute__((used)) static BOOL FUNC4(parse_buffer* buf)
{
  char tmp[512];
  DWORD pos = 0;
  char c;
  DWORD integer;

  while (pos < buf->rem_bytes && !FUNC1(c = *(buf->buffer+pos)))
  {
    if (!((c >= '0') && (c <= '9')))
      return FALSE;
    if (pos < sizeof(tmp))
        tmp[pos] = c;
    pos++;
  }
  tmp[FUNC2(pos, sizeof(tmp) - 1)] = 0;

  buf->buffer += pos;
  buf->rem_bytes -= pos;

  FUNC3(tmp, "%d", &integer);

  FUNC0("Found integer %s - %d\n", tmp, integer);

  *(DWORD*)buf->value = integer;

  return TRUE;
}