
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI ;


 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_strdup (char const*) ;
 int UIT_INFO ;
 int UI_F_UI_DUP_INFO_STRING ;
 int UIerr (int ,int ) ;
 int general_allocate_string (int *,char*,int,int ,int ,int *,int ,int ,int *) ;

int UI_dup_info_string(UI *ui, const char *text)
{
    char *text_copy = ((void*)0);

    if (text != ((void*)0)) {
        text_copy = OPENSSL_strdup(text);
        if (text_copy == ((void*)0)) {
            UIerr(UI_F_UI_DUP_INFO_STRING, ERR_R_MALLOC_FAILURE);
            return -1;
        }
    }

    return general_allocate_string(ui, text_copy, 1, UIT_INFO, 0, ((void*)0),
                                   0, 0, ((void*)0));
}
