
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

void backspace(char s[]) {
    int len = strlen(s);
    s[len-1] = '\0';
}
