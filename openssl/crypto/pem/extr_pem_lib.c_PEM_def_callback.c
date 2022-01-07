
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* EVP_get_pw_prompt () ;
 int EVP_read_pw_string_min (char*,int,int,char const*,int) ;
 int MIN_LENGTH ;
 int PEM_F_PEM_DEF_CALLBACK ;
 int PEM_R_PROBLEMS_GETTING_PASSWORD ;
 int PEMerr (int ,int ) ;
 int memcpy (char*,void*,int) ;
 int memset (char*,int ,unsigned int) ;
 int strlen (char*) ;

int PEM_def_callback(char *buf, int num, int rwflag, void *userdata)
{
    int i, min_len;
    const char *prompt;


    if (userdata) {
        i = strlen(userdata);
        i = (i > num) ? num : i;
        memcpy(buf, userdata, i);
        return i;
    }

    prompt = EVP_get_pw_prompt();
    if (prompt == ((void*)0))
        prompt = "Enter PEM pass phrase:";
    min_len = rwflag ? MIN_LENGTH : 0;

    i = EVP_read_pw_string_min(buf, min_len, num, prompt, rwflag);
    if (i != 0) {
        PEMerr(PEM_F_PEM_DEF_CALLBACK, PEM_R_PROBLEMS_GETTING_PASSWORD);
        memset(buf, 0, (unsigned int)num);
        return -1;
    }
    return strlen(buf);
}
