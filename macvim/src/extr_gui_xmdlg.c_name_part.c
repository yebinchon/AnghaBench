
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char NUL ;
 int TEMP_BUF_SIZE ;
 int get_part (char*,int,char*) ;
 int vim_snprintf (char*,int,char*,char*,...) ;

__attribute__((used)) static void
name_part(char *font, char *buf)
{
    char buf2[TEMP_BUF_SIZE];
    char buf3[TEMP_BUF_SIZE];

    get_part(font, 2, buf2);
    get_part(font, 1, buf3);

    if (*buf3 != NUL)
 vim_snprintf(buf, TEMP_BUF_SIZE, "%s (%s)", buf2, buf3);
    else
 vim_snprintf(buf, TEMP_BUF_SIZE, "%s", buf2);
}
