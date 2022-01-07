
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int hangul_input_clear () ;
 int hangul_keyboard_type ;

void
hangul_keyboard_set()
{
    int keyboard;
    char *s;

    hangul_input_clear();

    if ((s = getenv("VIM_KEYBOARD")) == ((void*)0))
 s = getenv("HANGUL_KEYBOARD_TYPE");

    if (s)
    {
 if (*s == '2')
     keyboard = 2;
 else
     keyboard = 3;
 hangul_keyboard_type = keyboard;
    }
}
