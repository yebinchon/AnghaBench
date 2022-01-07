
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_CMP_severity ;


 char* OPENSSL_strndup (char const*,int) ;
 int parse_level (char const*) ;
 char* strchr (char const*,char) ;
 long strtol (char const*,char**,int) ;

const char *ossl_cmp_log_parse_metadata(const char *buf,
                 OSSL_CMP_severity *level, char **func, char **file, int *line)
{
    const char *p_func = buf;
    const char *p_file = buf == ((void*)0) ? ((void*)0) : strchr(buf, ':');
    const char *p_level = buf;
    const char *msg = buf;

    *level = -1;
    *func = ((void*)0);
    *file = ((void*)0);
    *line = 0;

    if (p_file != ((void*)0)) {
        const char *p_line = strchr(++p_file, ':');

        if ((*level = parse_level(buf)) < 0 && p_line != ((void*)0)) {

            char *p_level_tmp = (char *)p_level;
            const long line_number = strtol(++p_line, &p_level_tmp, 10);

            p_level = p_level_tmp;
            if (p_level > p_line && *(p_level++) == ':') {
                if ((*level = parse_level(p_level)) >= 0) {
                    *func = OPENSSL_strndup(p_func, p_file - 1 - p_func);
                    *file = OPENSSL_strndup(p_file, p_line - 1 - p_file);

                    *line = (int)line_number;
                    msg = strchr(p_level, ':') + 1;
                    if (*msg == ' ')
                        msg++;
                }
            }
        }
    }
    return msg;
}
