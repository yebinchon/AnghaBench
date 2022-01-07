
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char const) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int ) ;

__attribute__((used)) static int
name_value_match(const char *query, const char *match)
{
    while (!isalnum(*query))
    {
        if (*query == '\0')
        {
            return 0;
        }
        ++query;
    }
    return strncasecmp(match, query, strlen(match)) == 0;
}
