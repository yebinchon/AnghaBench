
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_print_t ;
typedef char byte ;


 int mp_print_str (int const*,char*) ;
 int mp_printf (int const*,char*,char const) ;

void mp_str_print_quoted(const mp_print_t *print, const byte *str_data, size_t str_len, bool is_bytes) {

    bool has_single_quote = 0;
    bool has_double_quote = 0;
    for (const byte *s = str_data, *top = str_data + str_len; !has_double_quote && s < top; s++) {
        if (*s == '\'') {
            has_single_quote = 1;
        } else if (*s == '"') {
            has_double_quote = 1;
        }
    }
    int quote_char = '\'';
    if (has_single_quote && !has_double_quote) {
        quote_char = '"';
    }
    mp_printf(print, "%c", quote_char);
    for (const byte *s = str_data, *top = str_data + str_len; s < top; s++) {
        if (*s == quote_char) {
            mp_printf(print, "\\%c", quote_char);
        } else if (*s == '\\') {
            mp_print_str(print, "\\\\");
        } else if (*s >= 0x20 && *s != 0x7f && (!is_bytes || *s < 0x80)) {



            mp_printf(print, "%c", *s);
        } else if (*s == '\n') {
            mp_print_str(print, "\\n");
        } else if (*s == '\r') {
            mp_print_str(print, "\\r");
        } else if (*s == '\t') {
            mp_print_str(print, "\\t");
        } else {
            mp_printf(print, "\\x%02x", *s);
        }
    }
    mp_printf(print, "%c", quote_char);
}
