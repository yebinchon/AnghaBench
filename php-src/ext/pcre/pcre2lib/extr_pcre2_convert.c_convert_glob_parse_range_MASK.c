#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__* out_str; } ;
typedef  TYPE_1__ pcre2_output_context ;
typedef  scalar_t__ PCRE2_UCHAR ;
typedef  scalar_t__* PCRE2_SPTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ CHAR_BACKSLASH ; 
 scalar_t__ CHAR_CIRCUMFLEX_ACCENT ; 
 scalar_t__ CHAR_COLON ; 
 scalar_t__ CHAR_EXCLAMATION_MARK ; 
 scalar_t__ CHAR_LEFT_PARENTHESIS ; 
 scalar_t__ CHAR_LEFT_SQUARE_BRACKET ; 
 scalar_t__ CHAR_LESS_THAN_SIGN ; 
 scalar_t__ CHAR_MINUS ; 
 scalar_t__ CHAR_QUESTION_MARK ; 
 scalar_t__ CHAR_RIGHT_PARENTHESIS ; 
 scalar_t__ CHAR_RIGHT_SQUARE_BRACKET ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__*) ; 
 int PCRE2_ERROR_CONVERT_SYNTAX ; 
 int PCRE2_ERROR_MISSING_SQUARE_BRACKET ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 int FUNC2 (scalar_t__**,scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC6(PCRE2_SPTR *from, PCRE2_SPTR pattern_end,
  pcre2_output_context *out, BOOL utf, PCRE2_UCHAR separator,
  BOOL with_escape, PCRE2_UCHAR escape, BOOL no_wildsep)
{
BOOL is_negative = FALSE;
BOOL separator_seen = FALSE;
BOOL has_prev_c;
PCRE2_SPTR pattern = *from;
PCRE2_SPTR char_start = NULL;
uint32_t c, prev_c;
int len, class_index;

(void)utf; /* Avoid compiler warning. */

if (pattern >= pattern_end)
  {
  *from = pattern;
  return PCRE2_ERROR_MISSING_SQUARE_BRACKET;
  }

if (*pattern == CHAR_EXCLAMATION_MARK
    || *pattern == CHAR_CIRCUMFLEX_ACCENT)
  {
  pattern++;

  if (pattern >= pattern_end)
    {
    *from = pattern;
    return PCRE2_ERROR_MISSING_SQUARE_BRACKET;
    }

  is_negative = TRUE;

  out->out_str[0] = CHAR_LEFT_SQUARE_BRACKET;
  out->out_str[1] = CHAR_CIRCUMFLEX_ACCENT;
  len = 2;

  if (!no_wildsep)
    {
    if (with_escape)
      {
      out->out_str[len] = CHAR_BACKSLASH;
      len++;
      }
    out->out_str[len] = (uint8_t) separator;
    }

  FUNC5(out, len + 1);
  }
else
  FUNC4(out, CHAR_LEFT_SQUARE_BRACKET);

has_prev_c = FALSE;
prev_c = 0;

if (*pattern == CHAR_RIGHT_SQUARE_BRACKET)
  {
  out->out_str[0] = CHAR_BACKSLASH;
  out->out_str[1] = CHAR_RIGHT_SQUARE_BRACKET;
  FUNC5(out, 2);
  has_prev_c = TRUE;
  prev_c = CHAR_RIGHT_SQUARE_BRACKET;
  pattern++;
  }

while (pattern < pattern_end)
  {
  char_start = pattern;
  FUNC0(c, pattern);

  if (c == CHAR_RIGHT_SQUARE_BRACKET)
    {
    FUNC4(out, c);

    if (!is_negative && !no_wildsep && separator_seen)
      {
      out->out_str[0] = CHAR_LEFT_PARENTHESIS;
      out->out_str[1] = CHAR_QUESTION_MARK;
      out->out_str[2] = CHAR_LESS_THAN_SIGN;
      out->out_str[3] = CHAR_EXCLAMATION_MARK;
      FUNC5(out, 4);

      FUNC3(out, separator, with_escape);
      FUNC4(out, CHAR_RIGHT_PARENTHESIS);
      }

    *from = pattern;
    return 0;
    }

  if (pattern >= pattern_end) break;

  if (c == CHAR_LEFT_SQUARE_BRACKET && *pattern == CHAR_COLON)
    {
    *from = pattern;
    class_index = FUNC2(from, pattern_end, out);

    if (class_index != 0)
      {
      pattern = *from;

      has_prev_c = FALSE;
      prev_c = 0;

      if (!is_negative &&
          FUNC1 (class_index, separator))
        separator_seen = TRUE;
      continue;
      }
    }
  else if (c == CHAR_MINUS && has_prev_c &&
           *pattern != CHAR_RIGHT_SQUARE_BRACKET)
    {
    FUNC4(out, CHAR_MINUS);

    char_start = pattern;
    FUNC0(c, pattern);

    if (pattern >= pattern_end) break;

    if (escape != 0 && c == escape)
      {
      char_start = pattern;
      FUNC0(c, pattern);
      }
    else if (c == CHAR_LEFT_SQUARE_BRACKET && *pattern == CHAR_COLON)
      {
      *from = pattern;
      return PCRE2_ERROR_CONVERT_SYNTAX;
      }

    if (prev_c > c)
      {
      *from = pattern;
      return PCRE2_ERROR_CONVERT_SYNTAX;
      }

    if (prev_c < separator && separator < c) separator_seen = TRUE;

    has_prev_c = FALSE;
    prev_c = 0;
    }
  else
    {
    if (escape != 0 && c == escape)
      {
      char_start = pattern;
      FUNC0(c, pattern);

      if (pattern >= pattern_end) break;
      }

    has_prev_c = TRUE;
    prev_c = c;
    }

  if (c == CHAR_LEFT_SQUARE_BRACKET || c == CHAR_RIGHT_SQUARE_BRACKET ||
      c == CHAR_BACKSLASH || c == CHAR_MINUS)
    FUNC4(out, CHAR_BACKSLASH);

  if (c == separator) separator_seen = TRUE;

  do FUNC4(out, *char_start++); while (char_start < pattern);
  }

*from = pattern;
return PCRE2_ERROR_MISSING_SQUARE_BRACKET;
}