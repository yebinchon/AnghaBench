
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static int displaytext_get_tag_len(const char *tagstr)
{
    char *colon = strchr(tagstr, ':');

    return (colon == ((void*)0)) ? -1 : colon - tagstr;
}
