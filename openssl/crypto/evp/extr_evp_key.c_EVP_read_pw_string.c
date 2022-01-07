
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_read_pw_string_min (char*,int ,int,char const*,int) ;

int EVP_read_pw_string(char *buf, int len, const char *prompt, int verify)
{
    return EVP_read_pw_string_min(buf, 0, len, prompt, verify);
}
