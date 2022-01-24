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
struct TYPE_3__ {char* string; int quoted; } ;
typedef  TYPE_1__ HbaToken ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static HbaToken *
FUNC3(const char *token, bool quoted)
{
	HbaToken   *hbatoken;
	int			toklen;

	toklen = FUNC2(token);
	/* we copy string into same palloc block as the struct */
	hbatoken = (HbaToken *) FUNC1(sizeof(HbaToken) + toklen + 1);
	hbatoken->string = (char *) hbatoken + sizeof(HbaToken);
	hbatoken->quoted = quoted;
	FUNC0(hbatoken->string, token, toklen + 1);

	return hbatoken;
}