
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* prompt_string ;

char *EVP_get_pw_prompt(void)
{
    if (prompt_string[0] == '\0')
        return ((void*)0);
    else
        return prompt_string;
}
