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
struct TYPE_3__ {char* insts; int bytelen; char len; } ;
typedef  TYPE_1__ ByteProg ;

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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(ByteProg *prog)
{
    int pc = 0;
    char *code = prog->insts;
    while (pc < prog->bytelen) {
                FUNC1("%2d: ", pc);
                switch(code[pc++]) {
                default:
                        FUNC0(0);
//                        re1_5_fatal("printprog");
                case Split:
                        FUNC1("split %d (%d)\n", pc + (signed char)code[pc] + 1, (signed char)code[pc]);
                        pc++;
                        break;
                case RSplit:
                        FUNC1("rsplit %d (%d)\n", pc + (signed char)code[pc] + 1, (signed char)code[pc]);
                        pc++;
                        break;
                case Jmp:
                        FUNC1("jmp %d (%d)\n", pc + (signed char)code[pc] + 1, (signed char)code[pc]);
                        pc++;
                        break;
                case Char:
                        FUNC1("char %c\n", code[pc++]);
                        break;
                case Any:
                        FUNC1("any\n");
                        break;
                case Class:
                case ClassNot: {
                        int num = code[pc];
                        FUNC1("class%s %d", (code[pc - 1] == ClassNot ? "not" : ""), num);
                        pc++;
                        while (num--) {
                            FUNC1(" 0x%02x-0x%02x", code[pc], code[pc + 1]);
                            pc += 2;
                        }
                        FUNC1("\n");
                        break;
                }
                case NamedClass:
                        FUNC1("namedclass %c\n", code[pc++]);
                        break;
                case Match:
                        FUNC1("match\n");
                        break;
                case Save:
                        FUNC1("save %d\n", (unsigned char)code[pc++]);
                        break;
                case Bol:
                        FUNC1("assert bol\n");
                        break;
                case Eol:
                        FUNC1("assert eol\n");
                        break;
                }
    }
    FUNC1("Bytes: %d, insts: %d\n", prog->bytelen, prog->len);
}