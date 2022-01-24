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

/* Variables and functions */
 int /*<<< orphan*/  BIO_F_DOAPR_OUTCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t BUFFER_INC ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 size_t INT_MAX ; 
 char* FUNC1 (size_t) ; 
 char* FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(char **sbuffer,
            char **buffer, size_t *currlen, size_t *maxlen, int c)
{
    /* If we haven't at least one buffer, someone has done a big booboo */
    if (!FUNC4(*sbuffer != NULL || buffer != NULL))
        return 0;

    /* |currlen| must always be <= |*maxlen| */
    if (!FUNC4(*currlen <= *maxlen))
        return 0;

    if (buffer && *currlen == *maxlen) {
        if (*maxlen > INT_MAX - BUFFER_INC)
            return 0;

        *maxlen += BUFFER_INC;
        if (*buffer == NULL) {
            if ((*buffer = FUNC1(*maxlen)) == NULL) {
                FUNC0(BIO_F_DOAPR_OUTCH, ERR_R_MALLOC_FAILURE);
                return 0;
            }
            if (*currlen > 0) {
                if (!FUNC4(*sbuffer != NULL))
                    return 0;
                FUNC3(*buffer, *sbuffer, *currlen);
            }
            *sbuffer = NULL;
        } else {
            char *tmpbuf;
            tmpbuf = FUNC2(*buffer, *maxlen);
            if (tmpbuf == NULL)
                return 0;
            *buffer = tmpbuf;
        }
    }

    if (*currlen < *maxlen) {
        if (*sbuffer)
            (*sbuffer)[(*currlen)++] = (char)c;
        else
            (*buffer)[(*currlen)++] = (char)c;
    }

    return 1;
}