
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* prompt_string ;
 int strncpy (char*,char const*,int) ;

void EVP_set_pw_prompt(const char *prompt)
{
    if (prompt == ((void*)0))
        prompt_string[0] = '\0';
    else {
        strncpy(prompt_string, prompt, 79);
        prompt_string[79] = '\0';
    }
}
