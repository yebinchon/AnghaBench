
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI ;


 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_strdup (char const*) ;
 int UIT_PROMPT ;
 int UI_F_UI_DUP_INPUT_STRING ;
 int UIerr (int ,int ) ;
 int general_allocate_string (int *,char*,int,int ,int,char*,int,int,int *) ;

int UI_dup_input_string(UI *ui, const char *prompt, int flags,
                        char *result_buf, int minsize, int maxsize)
{
    char *prompt_copy = ((void*)0);

    if (prompt != ((void*)0)) {
        prompt_copy = OPENSSL_strdup(prompt);
        if (prompt_copy == ((void*)0)) {
            UIerr(UI_F_UI_DUP_INPUT_STRING, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }

    return general_allocate_string(ui, prompt_copy, 1,
                                   UIT_PROMPT, flags, result_buf, minsize,
                                   maxsize, ((void*)0));
}
