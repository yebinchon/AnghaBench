
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * strdup (char const*) ;
 int * test_title ;

void set_test_title(const char *title)
{
    free(test_title);
    test_title = title == ((void*)0) ? ((void*)0) : strdup(title);
}
