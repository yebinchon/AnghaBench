
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int sprintf (char*,char*,char const*,char const*) ;

__attribute__((used)) static void emit_get_while_end(REgg *egg, char *str, const char *ctxpush, const char *label) {
 sprintf (str, "  push {%s}\n  b %s\n", ctxpush, label);
}
