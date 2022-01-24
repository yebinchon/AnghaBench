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
struct TYPE_3__ {char* insts; int len; int sub; } ;
typedef  TYPE_1__ ByteProg ;

/* Variables and functions */
 int Any ; 
 int Bol ; 
 int Char ; 
 int Class ; 
 int ClassNot ; 
 int /*<<< orphan*/  FUNC0 (int,char const) ; 
 int Eol ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int Jmp ; 
 int NamedClass ; 
 int PC ; 
 int FUNC2 (int,int) ; 
 int RSplit ; 
 int Save ; 
 int Split ; 

__attribute__((used)) static const char *FUNC3(const char *re, ByteProg *prog, int sizecode)
{
    char *code = sizecode ? NULL : prog->insts;
    int start = PC;
    int term = PC;
    int alt_label = 0;

    for (; *re && *re != ')'; re++) {
        switch (*re) {
        case '\\':
            re++;
            if (!*re) return NULL; // Trailing backslash
            if ((*re | 0x20) == 'd' || (*re | 0x20) == 's' || (*re | 0x20) == 'w') {
                term = PC;
                FUNC0(PC++, NamedClass);
                FUNC0(PC++, *re);
                prog->len++;
                break;
            }
        default:
            term = PC;
            FUNC0(PC++, Char);
            FUNC0(PC++, *re);
            prog->len++;
            break;
        case '.':
            term = PC;
            FUNC0(PC++, Any);
            prog->len++;
            break;
        case '[': {
            int cnt;
            term = PC;
            re++;
            if (*re == '^') {
                FUNC0(PC++, ClassNot);
                re++;
            } else {
                FUNC0(PC++, Class);
            }
            PC++; // Skip # of pair byte
            prog->len++;
            for (cnt = 0; *re != ']'; re++, cnt++) {
                if (*re == '\\') {
                    ++re;
                }
                if (!*re) return NULL;
                FUNC0(PC++, *re);
                if (re[1] == '-' && re[2] != ']') {
                    re += 2;
                }
                FUNC0(PC++, *re);
            }
            FUNC0(term + 1, cnt);
            break;
        }
        case '(': {
            term = PC;
            int sub = 0;
            int capture = re[1] != '?' || re[2] != ':';

            if (capture) {
                sub = ++prog->sub;
                FUNC0(PC++, Save);
                FUNC0(PC++, 2 * sub);
                prog->len++;
            } else {
                    re += 2;
            }

            re = FUNC3(re + 1, prog, sizecode);
            if (re == NULL || *re != ')') return NULL; // error, or no matching paren

            if (capture) {
                FUNC0(PC++, Save);
                FUNC0(PC++, 2 * sub + 1);
                prog->len++;
            }

            break;
        }
        case '?':
            if (PC == term) return NULL; // nothing to repeat
            FUNC1(term, 2, PC);
            if (re[1] == '?') {
                FUNC0(term, RSplit);
                re++;
            } else {
                FUNC0(term, Split);
            }
            FUNC0(term + 1, FUNC2(term, PC));
            prog->len++;
            term = PC;
            break;
        case '*':
            if (PC == term) return NULL; // nothing to repeat
            FUNC1(term, 2, PC);
            FUNC0(PC, Jmp);
            FUNC0(PC + 1, FUNC2(PC, term));
            PC += 2;
            if (re[1] == '?') {
                FUNC0(term, RSplit);
                re++;
            } else {
                FUNC0(term, Split);
            }
            FUNC0(term + 1, FUNC2(term, PC));
            prog->len += 2;
            term = PC;
            break;
        case '+':
            if (PC == term) return NULL; // nothing to repeat
            if (re[1] == '?') {
                FUNC0(PC, Split);
                re++;
            } else {
                FUNC0(PC, RSplit);
            }
            FUNC0(PC + 1, FUNC2(PC, term));
            PC += 2;
            prog->len++;
            term = PC;
            break;
        case '|':
            if (alt_label) {
                FUNC0(alt_label, FUNC2(alt_label, PC) + 1);
            }
            FUNC1(start, 2, PC);
            FUNC0(PC++, Jmp);
            alt_label = PC++;
            FUNC0(start, Split);
            FUNC0(start + 1, FUNC2(start, PC));
            prog->len += 2;
            term = PC;
            break;
        case '^':
            FUNC0(PC++, Bol);
            prog->len++;
            term = PC;
            break;
        case '$':
            FUNC0(PC++, Eol);
            prog->len++;
            term = PC;
            break;
        }
    }

    if (alt_label) {
        FUNC0(alt_label, FUNC2(alt_label, PC) + 1);
    }
    return re;
}