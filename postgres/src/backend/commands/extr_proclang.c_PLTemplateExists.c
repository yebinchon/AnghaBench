
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * find_language_template (char const*) ;

bool
PLTemplateExists(const char *languageName)
{
 return (find_language_template(languageName) != ((void*)0));
}
