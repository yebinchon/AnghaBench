#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int* cp; } ;
typedef  TYPE_3__ match_state_t ;
typedef  int /*<<< orphan*/  jsbytecode ;
typedef  int WCHAR ;
struct TYPE_15__ {int* bits; } ;
struct TYPE_19__ {int converted; int length; TYPE_1__ u; } ;
struct TYPE_18__ {int* cpbegin; int* cpend; TYPE_2__* regexp; scalar_t__ stateStackTop; } ;
struct TYPE_16__ {int flags; size_t parenCount; size_t source_len; int* source; size_t classCount; TYPE_5__* classList; int /*<<< orphan*/ * program; } ;
typedef  size_t REOp ;
typedef  TYPE_4__ REGlobalData ;
typedef  TYPE_5__ RECharSet ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_LEN ; 
 TYPE_3__* FUNC0 (TYPE_4__*,TYPE_3__*,size_t) ; 
 int FALSE ; 
 TYPE_3__* FUNC1 (TYPE_4__*,TYPE_3__*,int const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int REG_MULTILINE ; 
#define  REOP_ALNUM 148 
#define  REOP_BACKREF 147 
#define  REOP_BOL 146 
#define  REOP_CLASS 145 
#define  REOP_DIGIT 144 
#define  REOP_DOT 143 
#define  REOP_EMPTY 142 
#define  REOP_EOL 141 
#define  REOP_FLAT 140 
#define  REOP_FLAT1 139 
#define  REOP_FLAT1i 138 
#define  REOP_FLATi 137 
#define  REOP_NCLASS 136 
#define  REOP_NONALNUM 135 
#define  REOP_NONDIGIT 134 
#define  REOP_NONSPACE 133 
#define  REOP_SPACE 132 
#define  REOP_UCFLAT1 131 
#define  REOP_UCFLAT1i 130 
#define  REOP_WBDRY 129 
#define  REOP_WNONBDRY 128 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 char** reop_names ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static inline match_state_t *
FUNC12(REGlobalData *gData, match_state_t *x, REOp op,
            jsbytecode **startpc, BOOL updatecp)
{
    match_state_t *result = NULL;
    WCHAR matchCh;
    size_t parenIndex;
    size_t offset, length, index;
    jsbytecode *pc = *startpc;  /* pc has already been incremented past op */
    const WCHAR *source;
    const WCHAR *startcp = x->cp;
    WCHAR ch;
    RECharSet *charSet;

    const char *opname = reop_names[op];
    FUNC7("\n%06d: %*s%s\n", (int)(pc - gData->regexp->program),
          (int)gData->stateStackTop * 2, "", opname);

    switch (op) {
      case REOP_EMPTY:
        result = x;
        break;
      case REOP_BOL:
        if (x->cp != gData->cpbegin) {
            if (/*!gData->cx->regExpStatics.multiline &&  FIXME !!! */
                !(gData->regexp->flags & REG_MULTILINE)) {
                break;
            }
            if (!FUNC5(x->cp[-1]))
                break;
        }
        result = x;
        break;
      case REOP_EOL:
        if (x->cp != gData->cpend) {
            if (/*!gData->cx->regExpStatics.multiline &&*/
                !(gData->regexp->flags & REG_MULTILINE)) {
                break;
            }
            if (!FUNC5(*x->cp))
                break;
        }
        result = x;
        break;
      case REOP_WBDRY:
        if ((x->cp == gData->cpbegin || !FUNC4(x->cp[-1])) ^
            !(x->cp != gData->cpend && FUNC4(*x->cp))) {
            result = x;
        }
        break;
      case REOP_WNONBDRY:
        if ((x->cp == gData->cpbegin || !FUNC4(x->cp[-1])) ^
            (x->cp != gData->cpend && FUNC4(*x->cp))) {
            result = x;
        }
        break;
      case REOP_DOT:
        if (x->cp != gData->cpend && !FUNC5(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_DIGIT:
        if (x->cp != gData->cpend && FUNC3(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_NONDIGIT:
        if (x->cp != gData->cpend && !FUNC3(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_ALNUM:
        if (x->cp != gData->cpend && FUNC4(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_NONALNUM:
        if (x->cp != gData->cpend && !FUNC4(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_SPACE:
        if (x->cp != gData->cpend && FUNC10(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_NONSPACE:
        if (x->cp != gData->cpend && !FUNC10(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_BACKREF:
        pc = FUNC6(pc, &parenIndex);
        FUNC8(parenIndex < gData->regexp->parenCount);
        result = FUNC0(gData, x, parenIndex);
        break;
      case REOP_FLAT:
        pc = FUNC6(pc, &offset);
        FUNC8(offset < gData->regexp->source_len);
        pc = FUNC6(pc, &length);
        FUNC8(1 <= length);
        FUNC8(length <= gData->regexp->source_len - offset);
        if (length <= (size_t)(gData->cpend - x->cp)) {
            source = gData->regexp->source + offset;
            FUNC7("%s\n", FUNC9(source, length));
            for (index = 0; index != length; index++) {
                if (source[index] != x->cp[index])
                    return NULL;
            }
            x->cp += length;
            result = x;
        }
        break;
      case REOP_FLAT1:
        matchCh = *pc++;
        FUNC7(" '%c' == '%c'\n", (char)matchCh, (char)*x->cp);
        if (x->cp != gData->cpend && *x->cp == matchCh) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_FLATi:
        pc = FUNC6(pc, &offset);
        FUNC8(offset < gData->regexp->source_len);
        pc = FUNC6(pc, &length);
        FUNC8(1 <= length);
        FUNC8(length <= gData->regexp->source_len - offset);
        source = gData->regexp->source;
        result = FUNC1(gData, x, source + offset, length);
        break;
      case REOP_FLAT1i:
        matchCh = *pc++;
        if (x->cp != gData->cpend && FUNC11(*x->cp) == FUNC11(matchCh)) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_UCFLAT1:
        matchCh = FUNC2(pc);
        FUNC7(" '%c' == '%c'\n", (char)matchCh, (char)*x->cp);
        pc += ARG_LEN;
        if (x->cp != gData->cpend && *x->cp == matchCh) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_UCFLAT1i:
        matchCh = FUNC2(pc);
        pc += ARG_LEN;
        if (x->cp != gData->cpend && FUNC11(*x->cp) == FUNC11(matchCh)) {
            result = x;
            result->cp++;
        }
        break;
      case REOP_CLASS:
        pc = FUNC6(pc, &index);
        FUNC8(index < gData->regexp->classCount);
        if (x->cp != gData->cpend) {
            charSet = &gData->regexp->classList[index];
            FUNC8(charSet->converted);
            ch = *x->cp;
            index = ch >> 3;
            if (charSet->length != 0 &&
                ch <= charSet->length &&
                (charSet->u.bits[index] & (1 << (ch & 0x7)))) {
                result = x;
                result->cp++;
            }
        }
        break;
      case REOP_NCLASS:
        pc = FUNC6(pc, &index);
        FUNC8(index < gData->regexp->classCount);
        if (x->cp != gData->cpend) {
            charSet = &gData->regexp->classList[index];
            FUNC8(charSet->converted);
            ch = *x->cp;
            index = ch >> 3;
            if (charSet->length == 0 ||
                ch > charSet->length ||
                !(charSet->u.bits[index] & (1 << (ch & 0x7)))) {
                result = x;
                result->cp++;
            }
        }
        break;

      default:
        FUNC8(FALSE);
    }
    if (result) {
        if (!updatecp)
            x->cp = startcp;
        *startpc = pc;
        FUNC7(" *\n");
        return result;
    }
    x->cp = startcp;
    return NULL;
}