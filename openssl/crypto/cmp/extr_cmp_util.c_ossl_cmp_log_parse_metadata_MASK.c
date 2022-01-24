#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int OSSL_CMP_severity ;

/* Variables and functions */
 char* FUNC0 (char const*,int) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char) ; 
 long FUNC3 (char const*,char**,int) ; 

const char *FUNC4(const char *buf,
                 OSSL_CMP_severity *level, char **func, char **file, int *line)
{
    const char *p_func = buf;
    const char *p_file = buf == NULL ? NULL : FUNC2(buf, ':');
    const char *p_level = buf;
    const char *msg = buf;

    *level = -1;
    *func = NULL;
    *file = NULL;
    *line = 0;

    if (p_file != NULL) {
        const char *p_line = FUNC2(++p_file, ':');

        if ((*level = FUNC1(buf)) < 0 && p_line != NULL) {
            /* check if buf contains location info and logging level */
            char *p_level_tmp = (char *)p_level;
            const long line_number = FUNC3(++p_line, &p_level_tmp, 10);

            p_level = p_level_tmp;
            if (p_level > p_line && *(p_level++) == ':') {
                if ((*level = FUNC1(p_level)) >= 0) {
                    *func = FUNC0(p_func, p_file - 1 - p_func);
                    *file = FUNC0(p_file, p_line - 1 - p_file);
                    /* no real problem if OPENSSL_strndup() returns NULL */
                    *line = (int)line_number;
                    msg = FUNC2(p_level, ':') + 1;
                    if (*msg == ' ')
                        msg++;
                }
            }
        }
    }
    return msg;
}