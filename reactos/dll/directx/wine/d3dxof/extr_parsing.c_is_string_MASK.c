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
struct TYPE_3__ {char* buffer; int rem_bytes; scalar_t__ value; } ;
typedef  TYPE_1__ parse_buffer ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static BOOL FUNC3(parse_buffer* buf)
{
  char tmp[512];
  DWORD pos = 0;
  char c;
  BOOL ok = FALSE;

  if (*buf->buffer != '"')
    return FALSE;

  while ((pos+1) < buf->rem_bytes)
  {
    c = *(buf->buffer+pos+1);
    if (c == '"')
    {
      ok = TRUE;
      break;
    }
    if (pos < sizeof(tmp))
        tmp[pos] = c;
    pos++;
  }
  tmp[FUNC1(pos, sizeof(tmp) - 1)] = 0;

  if (!ok)
  {
    FUNC0("Wrong string %s\n", tmp);
    return FALSE;
  }

  buf->buffer += pos + 2;
  buf->rem_bytes -= pos + 2;

  FUNC0("Found string %s\n", tmp);
  FUNC2((char*)buf->value, tmp);

  return TRUE;
}