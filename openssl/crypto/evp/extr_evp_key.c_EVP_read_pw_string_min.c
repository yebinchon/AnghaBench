
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI ;


 int BUFSIZ ;
 int OPENSSL_cleanse (char*,int) ;
 scalar_t__ UI_add_input_string (int *,char const*,int ,char*,int,int) ;
 scalar_t__ UI_add_verify_string (int *,char const*,int ,char*,int,int,char*) ;
 int UI_free (int *) ;
 int * UI_new () ;
 int UI_process (int *) ;
 char* prompt_string ;

int EVP_read_pw_string_min(char *buf, int min, int len, const char *prompt,
                           int verify)
{
    int ret = -1;
    char buff[BUFSIZ];
    UI *ui;

    if ((prompt == ((void*)0)) && (prompt_string[0] != '\0'))
        prompt = prompt_string;
    ui = UI_new();
    if (ui == ((void*)0))
        return ret;
    if (UI_add_input_string(ui, prompt, 0, buf, min,
                            (len >= BUFSIZ) ? BUFSIZ - 1 : len) < 0
        || (verify
            && UI_add_verify_string(ui, prompt, 0, buff, min,
                                    (len >= BUFSIZ) ? BUFSIZ - 1 : len,
                                    buf) < 0))
        goto end;
    ret = UI_process(ui);
    OPENSSL_cleanse(buff, BUFSIZ);
 end:
    UI_free(ui);
    return ret;
}
