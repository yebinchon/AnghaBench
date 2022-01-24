#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  p ;
struct TYPE_5__ {int flags; int shutdown; int init; int /*<<< orphan*/ * ptr; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int BIO_CLOSE ; 
#define  BIO_CTRL_DUP 143 
#define  BIO_CTRL_EOF 142 
#define  BIO_CTRL_FLUSH 141 
#define  BIO_CTRL_GET_CLOSE 140 
#define  BIO_CTRL_INFO 139 
#define  BIO_CTRL_PENDING 138 
#define  BIO_CTRL_POP 137 
#define  BIO_CTRL_PUSH 136 
#define  BIO_CTRL_RESET 135 
#define  BIO_CTRL_SET_CLOSE 134 
#define  BIO_CTRL_WPENDING 133 
#define  BIO_C_FILE_SEEK 132 
#define  BIO_C_FILE_TELL 131 
#define  BIO_C_GET_FILE_PTR 130 
#define  BIO_C_SET_FILENAME 129 
#define  BIO_C_SET_FILE_PTR 128 
 int BIO_FLAGS_UPLINK_INTERNAL ; 
 long BIO_FP_APPEND ; 
 long BIO_FP_READ ; 
 long BIO_FP_TEXT ; 
 long BIO_FP_WRITE ; 
 int /*<<< orphan*/  BIO_F_FILE_CTRL ; 
 int /*<<< orphan*/  BIO_R_BAD_FOPEN_MODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EOF ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  ERR_R_SYS_LIB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  O_BINARY ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char) ; 
 long FUNC9 (int /*<<< orphan*/ *) ; 
 void* _IOB_ENTRIES ; 
 int /*<<< orphan*/  _O_BINARY ; 
 int /*<<< orphan*/  _O_TEXT ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/ * FUNC20 (void*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ ) ; 
 void* stderr ; 
 void* stdin ; 
 void* stdout ; 

__attribute__((used)) static long FUNC22(BIO *b, int cmd, long num, void *ptr)
{
    long ret = 1;
    FILE *fp = (FILE *)b->ptr;
    FILE **fpp;
    char p[4];
    int st;

    switch (cmd) {
    case BIO_C_FILE_SEEK:
    case BIO_CTRL_RESET:
        if (b->flags & BIO_FLAGS_UPLINK_INTERNAL)
            ret = (long)FUNC7(b->ptr, num, 0);
        else
            ret = (long)FUNC16(fp, num, 0);
        break;
    case BIO_CTRL_EOF:
        if (b->flags & BIO_FLAGS_UPLINK_INTERNAL)
            ret = (long)FUNC5(fp);
        else
            ret = (long)FUNC12(fp);
        break;
    case BIO_C_FILE_TELL:
    case BIO_CTRL_INFO:
        if (b->flags & BIO_FLAGS_UPLINK_INTERNAL)
            ret = FUNC9(b->ptr);
        else
            ret = FUNC17(fp);
        break;
    case BIO_C_SET_FILE_PTR:
        FUNC14(b);
        b->shutdown = (int)num & BIO_CLOSE;
        b->ptr = ptr;
        b->init = 1;
# if BIO_FLAGS_UPLINK_INTERNAL!=0
#  if defined(__MINGW32__) && defined(__MSVCRT__) && !defined(_IOB_ENTRIES)
#   define _IOB_ENTRIES 20
#  endif
        /* Safety net to catch purely internal BIO_set_fp calls */
#  if defined(_MSC_VER) && _MSC_VER>=1900
        if (ptr == stdin || ptr == stdout || ptr == stderr)
            BIO_clear_flags(b, BIO_FLAGS_UPLINK_INTERNAL);
#  elif defined(_IOB_ENTRIES)
        if ((size_t)ptr >= (size_t)stdin &&
            (size_t)ptr < (size_t)(stdin + _IOB_ENTRIES))
            BIO_clear_flags(b, BIO_FLAGS_UPLINK_INTERNAL);
#  endif
# endif
# ifdef UP_fsetmod
        if (b->flags & BIO_FLAGS_UPLINK_INTERNAL)
            UP_fsetmod(b->ptr, (char)((num & BIO_FP_TEXT) ? 't' : 'b'));
        else
# endif
        {
# if defined(OPENSSL_SYS_WINDOWS)
            int fd = _fileno((FILE *)ptr);
            if (num & BIO_FP_TEXT)
                _setmode(fd, _O_TEXT);
            else
                _setmode(fd, _O_BINARY);
# elif defined(OPENSSL_SYS_MSDOS)
            int fd = fileno((FILE *)ptr);
            /* Set correct text/binary mode */
            if (num & BIO_FP_TEXT)
                _setmode(fd, _O_TEXT);
            /* Dangerous to set stdin/stdout to raw (unless redirected) */
            else {
                if (fd == STDIN_FILENO || fd == STDOUT_FILENO) {
                    if (isatty(fd) <= 0)
                        _setmode(fd, _O_BINARY);
                } else
                    _setmode(fd, _O_BINARY);
            }
# elif defined(OPENSSL_SYS_WIN32_CYGWIN)
            int fd = fileno((FILE *)ptr);
            if (!(num & BIO_FP_TEXT))
                setmode(fd, O_BINARY);
# endif
        }
        break;
    case BIO_C_SET_FILENAME:
        FUNC14(b);
        b->shutdown = (int)num & BIO_CLOSE;
        if (num & BIO_FP_APPEND) {
            if (num & BIO_FP_READ)
                FUNC4(p, "a+", sizeof(p));
            else
                FUNC4(p, "a", sizeof(p));
        } else if ((num & BIO_FP_READ) && (num & BIO_FP_WRITE))
            FUNC4(p, "r+", sizeof(p));
        else if (num & BIO_FP_WRITE)
            FUNC4(p, "w", sizeof(p));
        else if (num & BIO_FP_READ)
            FUNC4(p, "r", sizeof(p));
        else {
            FUNC1(BIO_F_FILE_CTRL, BIO_R_BAD_FOPEN_MODE);
            ret = 0;
            break;
        }
# if defined(OPENSSL_SYS_MSDOS) || defined(OPENSSL_SYS_WINDOWS)
        if (!(num & BIO_FP_TEXT))
            OPENSSL_strlcat(p, "b", sizeof(p));
        else
            OPENSSL_strlcat(p, "t", sizeof(p));
# elif defined(OPENSSL_SYS_WIN32_CYGWIN)
        if (!(num & BIO_FP_TEXT))
            OPENSSL_strlcat(p, "b", sizeof(p));
# endif
        fp = FUNC20(ptr, p);
        if (fp == NULL) {
            FUNC2(ERR_LIB_SYS, FUNC18(),
                           "calling fopen(%s, %s)",
                           ptr, p);
            FUNC1(BIO_F_FILE_CTRL, ERR_R_SYS_LIB);
            ret = 0;
            break;
        }
        b->ptr = fp;
        b->init = 1;
        /* we did fopen -> we disengage UPLINK */
        FUNC0(b, BIO_FLAGS_UPLINK_INTERNAL);
        break;
    case BIO_C_GET_FILE_PTR:
        /* the ptr parameter is actually a FILE ** in this case. */
        if (ptr != NULL) {
            fpp = (FILE **)ptr;
            *fpp = (FILE *)b->ptr;
        }
        break;
    case BIO_CTRL_GET_CLOSE:
        ret = (long)b->shutdown;
        break;
    case BIO_CTRL_SET_CLOSE:
        b->shutdown = (int)num;
        break;
    case BIO_CTRL_FLUSH:
        st = b->flags & BIO_FLAGS_UPLINK_INTERNAL
                ? FUNC6(b->ptr) : FUNC13((FILE *)b->ptr);
        if (st == EOF) {
            FUNC2(ERR_LIB_SYS, FUNC18(),
                           "calling fflush()");
            FUNC1(BIO_F_FILE_CTRL, ERR_R_SYS_LIB);
            ret = 0;
        }
        break;
    case BIO_CTRL_DUP:
        ret = 1;
        break;

    case BIO_CTRL_WPENDING:
    case BIO_CTRL_PENDING:
    case BIO_CTRL_PUSH:
    case BIO_CTRL_POP:
    default:
        ret = 0;
        break;
    }
    return ret;
}