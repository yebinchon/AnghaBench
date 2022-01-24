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
struct TYPE_3__ {char const* end; char const* begin; } ;
typedef  TYPE_1__ Subject ;

/* Variables and functions */
#define  Any 139 
#define  Bol 138 
#define  Char 137 
#define  Class 136 
#define  ClassNot 135 
#define  Eol 134 
#define  Jmp 133 
#define  Match 132 
#define  NamedClass 131 
#define  RSplit 130 
#define  Save 129 
#define  Split 128 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(char *pc, const char *sp, Subject *input, const char **subp, int nsubp)
{
	const char *old;
	int off;

	FUNC4();

	for(;;) {
		if(FUNC2(*pc)) {
			// If we need to match a character, but there's none left, it's fail
			if(sp >= input->end)
				return 0;
		}
		switch(*pc++) {
		case Char:
			if(*sp != *pc++)
				return 0;
		case Any:
			sp++;
			continue;
		case Class:
		case ClassNot:
			if (!FUNC0(pc, sp))
				return 0;
			pc += *(unsigned char*)pc * 2 + 1;
			sp++;
			continue;
                case NamedClass:
			if (!FUNC1(pc, sp))
				return 0;
			pc++;
			sp++;
			continue;
		case Match:
			return 1;
		case Jmp:
			off = (signed char)*pc++;
			pc = pc + off;
			continue;
		case Split:
			off = (signed char)*pc++;
			if(FUNC5(pc, sp, input, subp, nsubp))
				return 1;
			pc = pc + off;
			continue;
		case RSplit:
			off = (signed char)*pc++;
			if(FUNC5(pc + off, sp, input, subp, nsubp))
				return 1;
			continue;
		case Save:
			off = (unsigned char)*pc++;
			if(off >= nsubp) {
				continue;
			}
			old = subp[off];
			subp[off] = sp;
			if(FUNC5(pc, sp, input, subp, nsubp))
				return 1;
			subp[off] = old;
			return 0;
		case Bol:
			if(sp != input->begin)
				return 0;
			continue;
		case Eol:
			if(sp != input->end)
				return 0;
			continue;
		}
		FUNC3("recursiveloop");
	}
}