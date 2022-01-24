#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int UINT ;
struct TYPE_11__ {int startIndex; scalar_t__ length; } ;
struct TYPE_12__ {int /*<<< orphan*/  bits; TYPE_2__ src; } ;
struct TYPE_14__ {int length; scalar_t__ sense; TYPE_3__ u; scalar_t__ converted; } ;
struct TYPE_13__ {TYPE_1__* regexp; scalar_t__ ok; int /*<<< orphan*/  cx; } ;
struct TYPE_10__ {int source_len; char* source; int flags; } ;
typedef  TYPE_4__ REGlobalData ;
typedef  TYPE_5__ RECharSet ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char) ; 
 scalar_t__ FALSE ; 
 int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int REG_FOLD ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char,int*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char FUNC10 (char) ; 
 char FUNC11 (char) ; 

__attribute__((used)) static BOOL
FUNC12(REGlobalData *gData, RECharSet *charSet)
{
    const WCHAR *src, *end;
    BOOL inRange = FALSE;
    WCHAR rangeStart = 0;
    UINT byteLength, n;
    WCHAR c, thisCh;
    INT nDigits, i;

    FUNC5(!charSet->converted);
    /*
     * Assert that startIndex and length points to chars inside [] inside
     * source string.
     */
    FUNC5(1 <= charSet->u.src.startIndex);
    FUNC5(charSet->u.src.startIndex < gData->regexp->source_len);
    FUNC5(charSet->u.src.length <= gData->regexp->source_len
            - 1 - charSet->u.src.startIndex);

    charSet->converted = TRUE;
    src = gData->regexp->source + charSet->u.src.startIndex;

    end = src + charSet->u.src.length;

    FUNC5(src[-1] == '[' && end[0] == ']');

    byteLength = (charSet->length >> 3) + 1;
    charSet->u.bits = FUNC6(byteLength);
    if (!charSet->u.bits) {
        FUNC4(gData->cx);
        gData->ok = FALSE;
        return FALSE;
    }
    FUNC9(charSet->u.bits, 0, byteLength);

    if (src == end)
        return TRUE;

    if (*src == '^') {
        FUNC5(charSet->sense == FALSE);
        ++src;
    } else {
        FUNC5(charSet->sense == TRUE);
    }

    while (src != end) {
        switch (*src) {
          case '\\':
            ++src;
            c = *src++;
            switch (c) {
              case 'b':
                thisCh = 0x8;
                break;
              case 'f':
                thisCh = 0xC;
                break;
              case 'n':
                thisCh = 0xA;
                break;
              case 'r':
                thisCh = 0xD;
                break;
              case 't':
                thisCh = 0x9;
                break;
              case 'v':
                thisCh = 0xB;
                break;
              case 'c':
                if (src < end && FUNC3(*src)) {
                    thisCh = (WCHAR)(*src++ & 0x1F);
                } else {
                    --src;
                    thisCh = '\\';
                }
                break;
              case 'x':
                nDigits = 2;
                goto lexHex;
              case 'u':
                nDigits = 4;
            lexHex:
                n = 0;
                for (i = 0; (i < nDigits) && (src < end); i++) {
                    UINT digit;
                    c = *src++;
                    if (!FUNC7(c, &digit)) {
                        /*
                         * Back off to accepting the original '\'
                         * as a literal
                         */
                        src -= i + 1;
                        n = '\\';
                        break;
                    }
                    n = (n << 4) | digit;
                }
                thisCh = (WCHAR)n;
                break;
              case '0':
              case '1':
              case '2':
              case '3':
              case '4':
              case '5':
              case '6':
              case '7':
                /*
                 *  This is a non-ECMA extension - decimal escapes (in this
                 *  case, octal!) are supposed to be an error inside class
                 *  ranges, but supported here for backwards compatibility.
                 */
                n = FUNC2(c);
                c = *src;
                if ('0' <= c && c <= '7') {
                    src++;
                    n = 8 * n + FUNC2(c);
                    c = *src;
                    if ('0' <= c && c <= '7') {
                        src++;
                        i = 8 * n + FUNC2(c);
                        if (i <= 0377)
                            n = i;
                        else
                            src--;
                    }
                }
                thisCh = (WCHAR)n;
                break;

              case 'd':
                FUNC0(charSet, '0', '9');
                continue;   /* don't need range processing */
              case 'D':
                FUNC0(charSet, 0, '0' - 1);
                FUNC0(charSet,
                                           (WCHAR)('9' + 1),
                                           (WCHAR)charSet->length);
                continue;
              case 's':
                for (i = (INT)charSet->length; i >= 0; i--)
                    if (FUNC8(i))
                        FUNC1(charSet, (WCHAR)i);
                continue;
              case 'S':
                for (i = (INT)charSet->length; i >= 0; i--)
                    if (!FUNC8(i))
                        FUNC1(charSet, (WCHAR)i);
                continue;
              case 'w':
                for (i = (INT)charSet->length; i >= 0; i--)
                    if (FUNC3(i))
                        FUNC1(charSet, (WCHAR)i);
                continue;
              case 'W':
                for (i = (INT)charSet->length; i >= 0; i--)
                    if (!FUNC3(i))
                        FUNC1(charSet, (WCHAR)i);
                continue;
              default:
                thisCh = c;
                break;

            }
            break;

          default:
            thisCh = *src++;
            break;

        }
        if (inRange) {
            if (gData->regexp->flags & REG_FOLD) {
                FUNC5(rangeStart <= thisCh);
                for (i = rangeStart; i <= thisCh; i++) {
                    WCHAR uch, dch;

                    FUNC1(charSet, i);
                    uch = FUNC11(i);
                    dch = FUNC10(i);
                    if (i != uch)
                        FUNC1(charSet, uch);
                    if (i != dch)
                        FUNC1(charSet, dch);
                }
            } else {
                FUNC0(charSet, rangeStart, thisCh);
            }
            inRange = FALSE;
        } else {
            if (gData->regexp->flags & REG_FOLD) {
                FUNC1(charSet, FUNC11(thisCh));
                FUNC1(charSet, FUNC10(thisCh));
            } else {
                FUNC1(charSet, thisCh);
            }
            if (src < end - 1) {
                if (*src == '-') {
                    ++src;
                    inRange = TRUE;
                    rangeStart = thisCh;
                }
            }
        }
    }
    return TRUE;
}