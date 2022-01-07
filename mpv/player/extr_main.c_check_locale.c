
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_NUMERIC ;
 char* setlocale (int ,int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool check_locale(void)
{
    char *name = setlocale(LC_NUMERIC, ((void*)0));
    return !name || strcmp(name, "C") == 0 || strcmp(name, "C.UTF-8") == 0;
}
