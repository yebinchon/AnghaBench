#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_6__ {size_t top; char** err_data; size_t* err_data_size; scalar_t__* err_data_flags; } ;
typedef  TYPE_1__ ERR_STATE ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 
 size_t ERR_MAX_DATA_SIZE ; 
 unsigned long ERR_TXT_MALLOCED ; 
 unsigned long ERR_TXT_STRING ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t,char*,size_t,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t,int,int) ; 

void FUNC6(int lib, int reason, const char *fmt, va_list args)
{
    ERR_STATE *es;
    char *buf = NULL;
    size_t buf_size = 0;
    unsigned long flags = 0;
    size_t i;

    es = FUNC3();
    if (es == NULL)
        return;
    i = es->top;

    if (fmt != NULL) {
        int printed_len = 0;
        char *rbuf = NULL;

        buf = es->err_data[i];
        buf_size = es->err_data_size[i];

        /*
         * To protect the string we just grabbed from tampering by other
         * functions we may call, or to protect them from freeing a pointer
         * that may no longer be valid at that point, we clear away the
         * data pointer and the flags.  We will set them again at the end
         * of this function.
         */
        es->err_data[i] = NULL;
        es->err_data_flags[i] = 0;

        /*
         * Try to maximize the space available.  If that fails, we use what
         * we have.
         */
        if (buf_size < ERR_MAX_DATA_SIZE
            && (rbuf = FUNC1(buf, ERR_MAX_DATA_SIZE)) != NULL) {
            buf = rbuf;
            buf_size = ERR_MAX_DATA_SIZE;
        }

        if (buf != NULL) {
            printed_len = FUNC0(buf, buf_size, fmt, args);
        }
        if (printed_len < 0)
            printed_len = 0;
        buf[printed_len] = '\0';

        /*
         * Try to reduce the size, but only if we maximized above.  If that
         * fails, we keep what we have.
         * (According to documentation, realloc leaves the old buffer untouched
         * if it fails)
         */
        if ((rbuf = FUNC1(buf, printed_len + 1)) != NULL) {
            buf = rbuf;
            buf_size = printed_len + 1;
        }

        if (buf != NULL)
            flags = ERR_TXT_MALLOCED | ERR_TXT_STRING;
    }

    FUNC2(es, es->top, 0);
    FUNC5(es, es->top, lib, reason);
    if (fmt != NULL)
        FUNC4(es, es->top, buf, buf_size, flags);
}