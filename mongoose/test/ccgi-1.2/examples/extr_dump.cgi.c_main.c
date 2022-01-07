
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGI_varlist ;
typedef scalar_t__ CGI_value ;


 char* CGI_first_name (int *) ;
 int CGI_free_varlist (int *) ;
 int * CGI_get_all (char*) ;
 scalar_t__* CGI_lookup_all (int *,int ) ;
 char* CGI_next_name (int *) ;
 int fputs (char*,int ) ;
 int printf (char*,char const*,int,scalar_t__) ;
 int stdout ;

int
main(int argc, char **argv, char **env) {
    CGI_varlist *vl;
    const char *name;
    CGI_value *value;
    int i;

    fputs("Content-type: text/plain\r\n\r\n", stdout);
    fputs("Environment:\r\n", stdout);
    for (i = 0; env[i] != 0; i++) {
        fputs(env[i], stdout);
        fputs("\r\n", stdout);
    }

    if ((vl = CGI_get_all("/tmp/cgi-upload-XXXXXX")) == 0) {
        fputs("CGI_get_all() failed\r\n", stdout);
        return 0;
    }
    fputs("\r\nCGI Variables:\r\n", stdout);

    for (name = CGI_first_name(vl); name != 0;
        name = CGI_next_name(vl))
    {
        value = CGI_lookup_all(vl, 0);
        for (i = 0; value[i] != 0; i++) {
            printf("%s [%d] >>%s<<\r\n", name, i, value[i]);
        }
    }
    CGI_free_varlist(vl);
    return 0;
}
