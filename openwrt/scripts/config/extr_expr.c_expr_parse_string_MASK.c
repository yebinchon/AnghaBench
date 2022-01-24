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
union string_value {int s; int /*<<< orphan*/  u; } ;
typedef  enum symbol_type { ____Placeholder_symbol_type } symbol_type ;
typedef  enum string_value_kind { ____Placeholder_string_value_kind } string_value_kind ;

/* Variables and functions */
#define  S_BOOLEAN 133 
#define  S_HEX 132 
#define  S_INT 131 
#define  S_STRING 130 
#define  S_TRISTATE 129 
#define  S_UNKNOWN 128 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char) ; 
 int k_invalid ; 
 int k_signed ; 
 int k_string ; 
 int k_unsigned ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 void* FUNC2 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**,int) ; 

__attribute__((used)) static enum string_value_kind FUNC4(const char *str,
						enum symbol_type type,
						union string_value *val)
{
	char *tail;
	enum string_value_kind kind;

	errno = 0;
	switch (type) {
	case S_BOOLEAN:
	case S_TRISTATE:
		val->s = !FUNC1(str, "n") ? 0 :
			 !FUNC1(str, "m") ? 1 :
			 !FUNC1(str, "y") ? 2 : -1;
		return k_signed;
	case S_INT:
		val->s = FUNC2(str, &tail, 10);
		kind = k_signed;
		break;
	case S_HEX:
		val->u = FUNC3(str, &tail, 16);
		kind = k_unsigned;
		break;
	case S_STRING:
	case S_UNKNOWN:
		val->s = FUNC2(str, &tail, 0);
		kind = k_signed;
		break;
	default:
		return k_invalid;
	}
	return !errno && !*tail && tail > str && FUNC0(tail[-1])
	       ? kind : k_string;
}