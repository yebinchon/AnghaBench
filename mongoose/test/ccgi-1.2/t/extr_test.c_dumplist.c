
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGI_varlist ;
typedef scalar_t__ CGI_value ;


 char* CGI_first_name (int *) ;
 scalar_t__* CGI_lookup_all (int *,int ) ;
 char* CGI_next_name (int *) ;
 int printf (char*,char const*,int,scalar_t__) ;

__attribute__((used)) static void
dumplist(CGI_varlist *vl) {
    const char *name;
    CGI_value *value;
    int i;

    for (name = CGI_first_name(vl); name != 0;
        name = CGI_next_name(vl))
    {
        value = CGI_lookup_all(vl, 0);
        for (i = 0; value[i] != 0; i++) {
            printf("%s [%d] >>%s<<\n", name, i, value[i]);
        }
    }
}
