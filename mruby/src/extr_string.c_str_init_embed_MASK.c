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
struct RString {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMBED ; 
 char* FUNC0 (struct RString*) ; 
 int /*<<< orphan*/  FUNC1 (struct RString*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct RString*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

__attribute__((used)) static struct RString*
FUNC4(struct RString *s, const char *p, size_t len)
{
  if (p) FUNC3(FUNC0(s), p, len);
  FUNC0(s)[len] = '\0';
  FUNC2(s, EMBED);
  FUNC1(s, len);
  return s;
}