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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct bstr {int dummy; } ;
struct MPContext {char* filename; int /*<<< orphan*/  global; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  struct bstr bstr ;

/* Variables and functions */
 char const* FUNC0 (struct bstr) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bstr,char*) ; 
 struct bstr FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*) ; 
 struct tm* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*) ; 
 struct bstr FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (struct MPContext*,char*) ; 
 char* FUNC14 (char*,char) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,struct tm*) ; 
 char* FUNC16 (char*,char*) ; 
 char* FUNC17 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC18 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* FUNC20 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC21 (char*,char*) ; 
 char* FUNC22 (char*,char*,int) ; 
 char* FUNC23 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC25(struct MPContext *mpctx, char *template,
                          const char *file_ext, int *sequence, int *frameno)
{
    char *res = FUNC20(NULL, ""); //empty string, non-NULL context

    time_t raw_time = FUNC24(NULL);
    struct tm *local_time = FUNC6(&raw_time);

    if (!template || *template == '\0')
        return NULL;

    for (;;) {
        char *next = FUNC14(template, '%');
        if (!next)
            break;
        res = FUNC23(res, template, next - template);
        template = next + 1;
        char fmt = *template++;
        switch (fmt) {
        case '#':
        case '0':
        case 'n': {
            int digits = '4';
            if (fmt == '#') {
                if (!*sequence) {
                    *frameno = 1;
                }
                fmt = *template++;
            }
            if (fmt == '0') {
                digits = *template++;
                if (digits < '0' || digits > '9')
                    goto error_exit;
                fmt = *template++;
            }
            if (fmt != 'n')
                goto error_exit;
            char fmtstr[] = {'%', '0', digits, 'd', '\0'};
            res = FUNC18(res, fmtstr, *frameno);
            if (*frameno < 100000 - 1) {
                (*frameno) += 1;
                (*sequence) += 1;
            }
            break;
        }
        case 'f':
        case 'F': {
            char *video_file = NULL;
            if (mpctx->filename)
                video_file = FUNC7(mpctx->filename);

            if (!video_file)
                video_file = "NO_FILE";

            char *name = video_file;
            if (fmt == 'F')
                name = FUNC16(res, video_file);
            FUNC1(&res, name);
            break;
        }
        case 'x':
        case 'X': {
            char *fallback = "";
            if (fmt == 'X') {
                if (template[0] != '{')
                    goto error_exit;
                char *end = FUNC14(template, '}');
                if (!end)
                    goto error_exit;
                fallback = FUNC22(res, template + 1, end - template - 1);
                template = end + 1;
            }
            if (!mpctx->filename || FUNC12(FUNC2(mpctx->filename))) {
                res = FUNC21(res, fallback);
            } else {
                bstr dir = FUNC8(mpctx->filename);
                if (!FUNC3(dir, "."))
                    res = FUNC18(res, "%.*s", FUNC0(dir));
            }
            break;
        }
        case 'p':
        case 'P': {
            char *t = FUNC9(FUNC5(mpctx), fmt == 'P');
            FUNC1(&res, t);
            FUNC19(t);
            break;
        }
        case 'w': {
            char tfmt = *template;
            if (!tfmt)
                goto error_exit;
            template++;
            char fmtstr[] = {'%', tfmt, '\0'};
            char *s = FUNC10(fmtstr, FUNC5(mpctx));
            if (!s)
                goto error_exit;
            FUNC1(&res, s);
            FUNC19(s);
            break;
        }
        case 't': {
            char tfmt = *template;
            if (!tfmt)
                goto error_exit;
            template++;
            char fmtstr[] = {'%', tfmt, '\0'};
            char buffer[80];
            if (FUNC15(buffer, sizeof(buffer), fmtstr, local_time) == 0)
                buffer[0] = '\0';
            FUNC1(&res, buffer);
            break;
        }
        case '{': {
            char *end = FUNC14(template, '}');
            if (!end)
                goto error_exit;
            struct bstr prop = FUNC4(FUNC2(template), 0, end - template);
            char *tmp = FUNC17(NULL, "${%.*s}", FUNC0(prop));
            char *s = FUNC13(mpctx, tmp);
            FUNC19(tmp);
            if (s)
                FUNC1(&res, s);
            FUNC19(s);
            template = end + 1;
            break;
        }
        case '%':
            res = FUNC21(res, "%");
            break;
        default:
            goto error_exit;
        }
    }

    res = FUNC21(res, template);
    res = FUNC18(res, ".%s", file_ext);
    char *fname = FUNC11(NULL, mpctx->global, res);
    FUNC19(res);
    return fname;

error_exit:
    FUNC19(res);
    return NULL;
}