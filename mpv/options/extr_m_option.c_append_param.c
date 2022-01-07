
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NAMECH ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strspn (char*,int ) ;
 char* talloc_asprintf_append (char*,char*,scalar_t__,char*) ;
 char* talloc_strdup_append (char*,char*) ;

__attribute__((used)) static void append_param(char **res, char *param)
{
    if (strspn(param, NAMECH) == strlen(param)) {
        *res = talloc_strdup_append(*res, param);
    } else {

        *res = talloc_asprintf_append(*res, "%%%zd%%%s", strlen(param), param);
    }
}
