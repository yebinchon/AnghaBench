
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI ;


 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_strdup (char const*) ;
 int UIT_VERIFY ;
 int UI_F_UI_DUP_VERIFY_STRING ;
 int UIerr (int ,int ) ;
 int general_allocate_string (int *,char*,int,int ,int,char*,int,int,char const*) ;

int UI_dup_verify_string(UI *ui, const char *prompt, int flags,
                         char *result_buf, int minsize, int maxsize,
                         const char *test_buf)
{
    char *prompt_copy = ((void*)0);

    if (prompt != ((void*)0)) {
        prompt_copy = OPENSSL_strdup(prompt);
        if (prompt_copy == ((void*)0)) {
            UIerr(UI_F_UI_DUP_VERIFY_STRING, ERR_R_MALLOC_FAILURE);
            return -1;
        }
    }

    return general_allocate_string(ui, prompt_copy, 1,
                                   UIT_VERIFY, flags, result_buf, minsize,
                                   maxsize, test_buf);
}
