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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static inline size_t FUNC1(char *dst, const char *src, size_t len) {
    size_t i = len;

    // required escapes from
    // https://github.com/badges/shields/blob/master/badge.js
    while(*src && i) {
        switch(*src) {
            case '\\':
                *dst++ = '/';
                src++;
                i--;
                break;

            case '&':
                if(i > 5) {
                    FUNC0(dst, "&amp;");
                    i -= 5;
                    dst += 5;
                    src++;
                }
                else goto cleanup;
                break;

            case '<':
                if(i > 4) {
                    FUNC0(dst, "&lt;");
                    i -= 4;
                    dst += 4;
                    src++;
                }
                else goto cleanup;
                break;

            case '>':
                if(i > 4) {
                    FUNC0(dst, "&gt;");
                    i -= 4;
                    dst += 4;
                    src++;
                }
                else goto cleanup;
                break;

            case '"':
                if(i > 6) {
                    FUNC0(dst, "&quot;");
                    i -= 6;
                    dst += 6;
                    src++;
                }
                else goto cleanup;
                break;

            case '\'':
                if(i > 6) {
                    FUNC0(dst, "&apos;");
                    i -= 6;
                    dst += 6;
                    src++;
                }
                else goto cleanup;
                break;

            default:
                i--;
                *dst++ = *src++;
                break;
        }
    }

cleanup:
    *dst = '\0';
    return len - i;
}