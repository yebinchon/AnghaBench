
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_LIB_CMP ;
 int ERR_TXT_STRING ;
 int ERR_add_error_data (int,char const*,char const*) ;
 unsigned long ERR_peek_last_error () ;
 int ERR_peek_last_error_all (char const**,int*,char const**,char const**,int*) ;
 size_t MAX_DATA_LEN ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strndup (char const*,int) ;
 int put_error (int ,char const*,unsigned long,char const*,int) ;
 size_t strlen (char const*) ;
 char* strstr (char const*,char const*) ;

void ossl_cmp_add_error_txt(const char *separator, const char *txt)
{
    const char *file = ((void*)0);
    int line;
    const char *func = ((void*)0);
    const char *data = ((void*)0);
    int flags;
    unsigned long err = ERR_peek_last_error();

    if (separator == ((void*)0))
        separator = "";
    if (err == 0)
        put_error(ERR_LIB_CMP, ((void*)0), 0, "", 0);

    do {
        size_t available_len, data_len;
        const char *curr = txt, *next = txt;
        char *tmp;

        ERR_peek_last_error_all(&file, &line, &func, &data, &flags);
        if ((flags & ERR_TXT_STRING) == 0) {
            data = "";
            separator = "";
        }
        data_len = strlen(data);


        if (data_len >= MAX_DATA_LEN
                || strlen(separator) >= (size_t)(MAX_DATA_LEN - data_len))
            available_len = 0;
        else
            available_len = MAX_DATA_LEN - data_len - strlen(separator) - 1;


        if (separator[0] == '\0') {
            const size_t len_next = strlen(next);

            if (len_next <= available_len) {
                next += len_next;
                curr = ((void*)0);
            }
            else {
                next += available_len;
                curr = next;
            }
        } else {
            while (*next != '\0' && (size_t)(next - txt) <= available_len) {
                curr = next;
                next = strstr(curr, separator);
                if (next != ((void*)0))
                    next += strlen(separator);
                else
                    next = curr + strlen(curr);
            }
            if ((size_t)(next - txt) <= available_len)
                curr = ((void*)0);
        }
        if (curr != ((void*)0)) {

            if (curr != txt) {
                tmp = OPENSSL_strndup(txt, curr - txt);
                if (tmp == ((void*)0))
                    return;
                ERR_add_error_data(2, separator, tmp);
                OPENSSL_free(tmp);
            }
            put_error(ERR_LIB_CMP, func, err, file, line);
            txt = curr;
        } else {
            ERR_add_error_data(2, separator, txt);
            txt = next;
        }
    } while (*txt != '\0');
}
