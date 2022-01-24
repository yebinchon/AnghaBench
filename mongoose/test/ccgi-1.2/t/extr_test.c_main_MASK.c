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
typedef  int /*<<< orphan*/  CGI_varlist ;
typedef  int /*<<< orphan*/  CGI_value ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (char*,int*) ; 
 scalar_t__ FUNC2 (char*,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*,int*,char const*) ; 
 char* FUNC6 (char*,int) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char*,int) ; 
 char* FUNC9 (char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 char* FUNC10 (char*,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (char*,int,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,...) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 int FUNC23 (char*) ; 

int
FUNC24(int argc, char **argv) {
    CGI_varlist *vl;
    char *p;
    CGI_value *value;
    int i;

    if (FUNC22(argv[1], "CGI_get_cookie") == 0) {
        vl = FUNC13(0);
        FUNC17(vl);
        return 0;
    }

    if (FUNC22(argv[1], "CGI_get_query") == 0) {
        vl = FUNC15(0);
        FUNC17(vl);
        return 0;
    }

    if (FUNC22(argv[1], "CGI_decode_query") == 0) {
        vl = FUNC3(0, argv[2]);
        FUNC17(vl);
        return 0;
    }

    if (FUNC22(argv[1], "CGI_get_post") == 0) {
        vl = FUNC14(0, 0);
        FUNC17(vl);
        return 0;
    }

    if (FUNC22(argv[1], "upload") == 0) {
        vl = FUNC14(0, "./cgi-upload-XXXXXX");
        value = FUNC16(vl, "upload");
        FUNC17(vl);
        return 0;
    }

    if (FUNC22(argv[1], "CGI_add_var") == 0) {
        vl = 0;
        for (i = 2; i + 1 < argc; i += 2) {
            vl = FUNC0(vl, argv[i], argv[i + 1]);
        }
        FUNC17(vl);
        return 0;
    }

    if (FUNC22(argv[1], "CGI_encode_varlist") == 0) {
        vl = 0;
        for (i = 2; i + 1 < argc; i += 2) {
            vl = FUNC0(vl, argv[i], argv[i + 1]);
        }
        FUNC17(vl);
        p = FUNC11(vl, ".-_");
        FUNC19(p, stdout);
        FUNC18('\n', stdout);
        return 0;
    }


    if (FUNC22(argv[1], "CGI_encode_url") == 0) {
        p = FUNC10(argv[2], ".-_");
        FUNC19(p, stdout);
        FUNC18('\n', stdout);
        p = FUNC4(p);
        FUNC19(p, stdout);
        FUNC18('\n', stdout);
        return 0;
    }

    if (FUNC22(argv[1], "CGI_encode_query") == 0) {
        p = FUNC9(".-_", argv[2], argv[3], argv[4], argv[5],
            argv[6], argv[7], argv[8], argv[9], argv[10], argv[11],
            argv[12], argv[13], argv[14], argv[15], argv[16], argv[17],
            argv[18], argv[19], argv[20], argv[21], (char *)0);
        FUNC19(p, stdout);
        FUNC18('\n', stdout);
        vl = FUNC3(0, p);
        FUNC17(vl);
        return 0;
    }

    if (FUNC22(argv[1], "CGI_encode_base64") == 0) {
        p = argv[2];
        p = FUNC6(p, FUNC23(p));
        FUNC19(p, stdout);
        FUNC18('\n', stdout);
        p = (char *) FUNC1(p, &i);
        FUNC20(p, i, 1, stdout);
        FUNC18('\n', stdout);
        return 0;
    }

    if (FUNC22(argv[1], "CGI_encode_hex") == 0) {
        p = argv[2];
        p = FUNC8(p, FUNC23(p));
        FUNC19(p, stdout);
        FUNC18('\n', stdout);
        p = (char *) FUNC2(p, &i);
        FUNC20(p, i, 1, stdout);
        FUNC18('\n', stdout);
        return 0;
    }

    if (FUNC22(argv[1], "CGI_encode_entity") == 0) {
        p = FUNC7(argv[2]);
        FUNC19(p, stdout);
        FUNC18('\n', stdout);
        return 0;
    }
    if (FUNC22(argv[1], "CGI_encrypt") == 0) {
        const char *pw = "This is my C CGI test password";
        p = argv[2];
        p = FUNC12(p, FUNC23(p), pw);
		FUNC21("enc len = %d\n", FUNC23(p));
        p = FUNC5(p , &i, pw);
		FUNC21("dec len = %d %s\n", i, p);
        return 0;
    }
    return 0;
}