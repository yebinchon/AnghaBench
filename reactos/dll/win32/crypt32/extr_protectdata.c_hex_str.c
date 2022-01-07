
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char*,int ) ;
 int strlen (char*) ;
 char const* wine_dbg_sprintf (char*,char const*,...) ;

__attribute__((used)) static const char *
hex_str(const unsigned char *p, int n)
{
    const char * ptr;
    char report[80];
    int r=-1;
    report[0]='\0';
    ptr = wine_dbg_sprintf("%s","");
    while (--n >= 0)
    {
        if (r++ % 20 == 19)
        {
            ptr = wine_dbg_sprintf("%s%s",ptr,report);
            report[0]='\0';
        }
        sprintf(report+strlen(report),"%s%02x", r ? "," : "", *p++);
    }
    return wine_dbg_sprintf("%s%s",ptr,report);
}
