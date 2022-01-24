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
typedef  int /*<<< orphan*/  parse_buffer ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_ARRAY ; 
 int /*<<< orphan*/  TOKEN_CHAR ; 
 int /*<<< orphan*/  TOKEN_CSTRING ; 
 int /*<<< orphan*/  TOKEN_DOUBLE ; 
 int /*<<< orphan*/  TOKEN_DWORD ; 
 int /*<<< orphan*/  TOKEN_FLOAT ; 
 int /*<<< orphan*/  TOKEN_LPSTR ; 
 int /*<<< orphan*/  TOKEN_SDWORD ; 
 int /*<<< orphan*/  TOKEN_SWORD ; 
 int /*<<< orphan*/  TOKEN_TEMPLATE ; 
 int /*<<< orphan*/  TOKEN_UCHAR ; 
 int /*<<< orphan*/  TOKEN_UNICODE ; 
 int /*<<< orphan*/  TOKEN_VOID ; 
 int /*<<< orphan*/  TOKEN_WORD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static WORD FUNC1(parse_buffer* buf)
{
  if (FUNC0(buf, "template"))
    return TOKEN_TEMPLATE;
  if (FUNC0(buf, "WORD"))
    return TOKEN_WORD;
  if (FUNC0(buf, "DWORD"))
    return TOKEN_DWORD;
  if (FUNC0(buf, "FLOAT"))
    return TOKEN_FLOAT;
  if (FUNC0(buf, "DOUBLE"))
    return TOKEN_DOUBLE;
  if (FUNC0(buf, "CHAR"))
    return TOKEN_CHAR;
  if (FUNC0(buf, "UCHAR"))
    return TOKEN_UCHAR;
  if (FUNC0(buf, "SWORD"))
    return TOKEN_SWORD;
  if (FUNC0(buf, "SDWORD"))
    return TOKEN_SDWORD;
  if (FUNC0(buf, "VOID"))
    return TOKEN_VOID;
  if (FUNC0(buf, "STRING"))
    return TOKEN_LPSTR;
  if (FUNC0(buf, "UNICODE"))
    return TOKEN_UNICODE;
  if (FUNC0(buf, "CSTRING"))
    return TOKEN_CSTRING;
  if (FUNC0(buf, "array"))
    return TOKEN_ARRAY;

  return 0;
}