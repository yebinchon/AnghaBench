
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int esc_bslash; int strconv_mode; } ;
typedef TYPE_1__ RPrint ;


 int r_return_if_fail (int ) ;
 int r_str_byte_escape (char const*,char**,int,int,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void r_print_byte_escape(const RPrint* p, const char *src, char **dst, int dot_nl) {
 r_return_if_fail (p->strconv_mode);
 r_str_byte_escape (src, dst, dot_nl, !strcmp (p->strconv_mode, "asciidot"), p->esc_bslash);
}
