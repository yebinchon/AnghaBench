
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int scanner_t ;
typedef int json_t ;


 int * json_null () ;
 int * json_stringn_nocheck (char*,size_t) ;
 int * jsonp_stringn_nocheck_own (char*,size_t) ;
 int next_token (int *) ;
 int prev_token (int *) ;
 char* read_string (int *,int *,char*,size_t*,int*) ;
 char token (int *) ;

__attribute__((used)) static json_t *pack_string(scanner_t *s, va_list *ap)
{
    char *str;
    size_t len;
    int ours;
    int nullable;

    next_token(s);
    nullable = token(s) == '?';
    if (!nullable)
        prev_token(s);

    str = read_string(s, ap, "string", &len, &ours);
    if (!str) {
        return nullable ? json_null() : ((void*)0);
    } else if (ours) {
        return jsonp_stringn_nocheck_own(str, len);
    } else {
        return json_stringn_nocheck(str, len);
    }
}
