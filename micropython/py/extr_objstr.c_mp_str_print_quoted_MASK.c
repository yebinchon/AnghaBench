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
typedef  int /*<<< orphan*/  mp_print_t ;
typedef  char byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*,char const) ; 

void FUNC2(const mp_print_t *print, const byte *str_data, size_t str_len, bool is_bytes) {
    // this escapes characters, but it will be very slow to print (calling print many times)
    bool has_single_quote = false;
    bool has_double_quote = false;
    for (const byte *s = str_data, *top = str_data + str_len; !has_double_quote && s < top; s++) {
        if (*s == '\'') {
            has_single_quote = true;
        } else if (*s == '"') {
            has_double_quote = true;
        }
    }
    int quote_char = '\'';
    if (has_single_quote && !has_double_quote) {
        quote_char = '"';
    }
    FUNC1(print, "%c", quote_char);
    for (const byte *s = str_data, *top = str_data + str_len; s < top; s++) {
        if (*s == quote_char) {
            FUNC1(print, "\\%c", quote_char);
        } else if (*s == '\\') {
            FUNC0(print, "\\\\");
        } else if (*s >= 0x20 && *s != 0x7f && (!is_bytes || *s < 0x80)) {
            // In strings, anything which is not ascii control character
            // is printed as is, this includes characters in range 0x80-0xff
            // (which can be non-Latin letters, etc.)
            FUNC1(print, "%c", *s);
        } else if (*s == '\n') {
            FUNC0(print, "\\n");
        } else if (*s == '\r') {
            FUNC0(print, "\\r");
        } else if (*s == '\t') {
            FUNC0(print, "\\t");
        } else {
            FUNC1(print, "\\x%02x", *s);
        }
    }
    FUNC1(print, "%c", quote_char);
}