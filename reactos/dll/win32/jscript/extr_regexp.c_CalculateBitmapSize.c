
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_10__ {int flags; int context; } ;
struct TYPE_7__ {int bmsize; void* sense; } ;
struct TYPE_8__ {TYPE_1__ ucclass; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef TYPE_3__ RENode ;
typedef TYPE_4__ CompilerState ;
typedef void* BOOL ;


 void* FALSE ;
 int JS7_UNDEC (char) ;
 int JSMSG_BAD_CLASS_RANGE ;
 int JS_ReportErrorNumber (int ,int ,int *,int ) ;
 int REG_FOLD ;
 int RE_IS_LETTER (char const) ;
 void* TRUE ;
 int isASCIIHexDigit (char,int*) ;
 int js_GetErrorMessage ;
 char towlower (int) ;
 char towupper (int) ;

__attribute__((used)) static BOOL
CalculateBitmapSize(CompilerState *state, RENode *target, const WCHAR *src,
                    const WCHAR *end)
{
    UINT max = 0;
    BOOL inRange = FALSE;
    WCHAR c, rangeStart = 0;
    UINT n, digit, nDigits, i;

    target->u.ucclass.bmsize = 0;
    target->u.ucclass.sense = TRUE;

    if (src == end)
        return TRUE;

    if (*src == '^') {
        ++src;
        target->u.ucclass.sense = FALSE;
    }

    while (src != end) {
        BOOL canStartRange = TRUE;
        UINT localMax = 0;

        switch (*src) {
          case '\\':
            ++src;
            c = *src++;
            switch (c) {
              case 'b':
                localMax = 0x8;
                break;
              case 'f':
                localMax = 0xC;
                break;
              case 'n':
                localMax = 0xA;
                break;
              case 'r':
                localMax = 0xD;
                break;
              case 't':
                localMax = 0x9;
                break;
              case 'v':
                localMax = 0xB;
                break;
              case 'c':
                if (src < end && RE_IS_LETTER(*src)) {
                    localMax = (UINT) (*src++) & 0x1F;
                } else {
                    --src;
                    localMax = '\\';
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
                    c = *src++;
                    if (!isASCIIHexDigit(c, &digit)) {




                        src -= i + 1;
                        n = '\\';
                        break;
                    }
                    n = (n << 4) | digit;
                }
                localMax = n;
                break;
              case 'd':
                canStartRange = FALSE;
                if (inRange) {
                    JS_ReportErrorNumber(state->context,
                                         js_GetErrorMessage, ((void*)0),
                                         JSMSG_BAD_CLASS_RANGE);
                    return FALSE;
                }
                localMax = '9';
                break;
              case 'D':
              case 's':
              case 'S':
              case 'w':
              case 'W':
                canStartRange = FALSE;
                if (inRange) {
                    JS_ReportErrorNumber(state->context,
                                         js_GetErrorMessage, ((void*)0),
                                         JSMSG_BAD_CLASS_RANGE);
                    return FALSE;
                }
                max = 65535;





                localMax = 0;
                break;
              case '0':
              case '1':
              case '2':
              case '3':
              case '4':
              case '5':
              case '6':
              case '7':






                n = JS7_UNDEC(c);
                c = *src;
                if ('0' <= c && c <= '7') {
                    src++;
                    n = 8 * n + JS7_UNDEC(c);
                    c = *src;
                    if ('0' <= c && c <= '7') {
                        src++;
                        i = 8 * n + JS7_UNDEC(c);
                        if (i <= 0377)
                            n = i;
                        else
                            src--;
                    }
                }
                localMax = n;
                break;

              default:
                localMax = c;
                break;
            }
            break;
          default:
            localMax = *src++;
            break;
        }

        if (inRange) {

            if (rangeStart > localMax) {
                JS_ReportErrorNumber(state->context,
                                     js_GetErrorMessage, ((void*)0),
                                     JSMSG_BAD_CLASS_RANGE);
                return FALSE;
            }
            inRange = FALSE;
        } else {
            if (canStartRange && src < end - 1) {
                if (*src == '-') {
                    ++src;
                    inRange = TRUE;
                    rangeStart = (WCHAR)localMax;
                    continue;
                }
            }
            if (state->flags & REG_FOLD)
                rangeStart = localMax;
        }

        if (state->flags & REG_FOLD) {
            WCHAR maxch = localMax;

            for (i = rangeStart; i <= localMax; i++) {
                WCHAR uch, dch;

                uch = towupper(i);
                dch = towlower(i);
                if(maxch < uch)
                    maxch = uch;
                if(maxch < dch)
                    maxch = dch;
            }
            localMax = maxch;
        }

        if (localMax > max)
            max = localMax;
    }
    target->u.ucclass.bmsize = max;
    return TRUE;
}
