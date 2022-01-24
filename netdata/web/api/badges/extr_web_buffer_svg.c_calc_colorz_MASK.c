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
typedef  int /*<<< orphan*/  calculated_number ;
typedef  scalar_t__ BADGE_COLOR_COMPARISON ;

/* Variables and functions */
 scalar_t__ COLOR_COMPARE_EQUAL ; 
 scalar_t__ COLOR_COMPARE_GREATER ; 
 scalar_t__ COLOR_COMPARE_GREATEREQUAL ; 
 scalar_t__ COLOR_COMPARE_LESS ; 
 scalar_t__ COLOR_COMPARE_LESSEQUAL ; 
 scalar_t__ COLOR_COMPARE_NOTEQUAL ; 
 int /*<<< orphan*/  NAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static inline void FUNC11(const char *color, char *final, size_t len, calculated_number value) {
    if(FUNC6(value) || FUNC2(value))
        value = NAN;

    char color_buffer[256 + 1] = "";
    char value_buffer[256 + 1] = "";
    BADGE_COLOR_COMPARISON comparison = COLOR_COMPARE_GREATER;

    // example input:
    // color<max|color>min|color:null...

    const char *c = color;
    while(*c) {
        char *dc = color_buffer, *dv = NULL;
        size_t ci = 0, vi = 0;

        const char *t = c;

        while(*t && *t != '|') {
            switch(*t) {
                case '!':
                    if(t[1] == '=') t++;
                    comparison = COLOR_COMPARE_NOTEQUAL;
                    dv = value_buffer;
                    break;

                case '=':
                case ':':
                    comparison = COLOR_COMPARE_EQUAL;
                    dv = value_buffer;
                    break;

                case '}':
                case ')':
                case '>':
                    if(t[1] == '=') {
                        comparison = COLOR_COMPARE_GREATEREQUAL;
                        t++;
                    }
                    else
                        comparison = COLOR_COMPARE_GREATER;
                    dv = value_buffer;
                    break;

                case '{':
                case '(':
                case '<':
                    if(t[1] == '=') {
                        comparison = COLOR_COMPARE_LESSEQUAL;
                        t++;
                    }
                    else if(t[1] == '>' || t[1] == ')' || t[1] == '}') {
                        comparison = COLOR_COMPARE_NOTEQUAL;
                        t++;
                    }
                    else
                        comparison = COLOR_COMPARE_LESS;
                    dv = value_buffer;
                    break;

                default:
                    if(dv) {
                        if(vi < 256) {
                            vi++;
                            *dv++ = *t;
                        }
                    }
                    else {
                        if(ci < 256) {
                            ci++;
                            *dc++ = *t;
                        }
                    }
                    break;
            }

            t++;
        }

        // prepare for next iteration
        if(*t == '|') t++;
        c = t;

        // do the math
        *dc = '\0';
        if(dv) {
            *dv = '\0';
            calculated_number v;

            if(!*value_buffer || !FUNC8(value_buffer, "null")) {
                v = NAN;
            }
            else {
                v = FUNC7(value_buffer);
                if(FUNC6(v) || FUNC2(v))
                    v = NAN;
            }

            if(FUNC10(FUNC6(value) || FUNC6(v))) {
                if(FUNC6(value) && FUNC6(v))
                    break;
            }
            else {
                     if (FUNC10(comparison == COLOR_COMPARE_LESS && FUNC3(value, v))) break;
                else if (FUNC10(comparison == COLOR_COMPARE_LESSEQUAL && FUNC4(value, v))) break;
                else if (FUNC10(comparison == COLOR_COMPARE_GREATER && FUNC0(value, v))) break;
                else if (FUNC10(comparison == COLOR_COMPARE_GREATEREQUAL && FUNC1(value, v))) break;
                else if (FUNC10(comparison == COLOR_COMPARE_EQUAL && !FUNC5(value, v))) break;
                else if (FUNC10(comparison == COLOR_COMPARE_NOTEQUAL && FUNC5(value, v))) break;
            }
        }
        else
            break;
    }

    const char *b;
    if(color_buffer[0])
        b = color_buffer;
    else
        b = color;

    FUNC9(final, b, len);
}