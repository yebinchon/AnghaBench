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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,char*) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 double** dsa_results ; 
 int FUNC7 (int) ; 
 double** ecdh_results ; 
 double** ecdsa_results ; 
 double** eddsa_results ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 () ; 
 int mr ; 
 int FUNC14 (int*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 double** results ; 
 double** rsa_results ; 
 double** sm2_results ; 
 int /*<<< orphan*/  FUNC16 (char**,char*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC17 (char*,char) ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 
 scalar_t__ usertime ; 

__attribute__((used)) static int FUNC19(int multi, int size_num)
{
    int n;
    int fd[2];
    int *fds;
    static char sep[] = ":";

    fds = FUNC3(sizeof(*fds) * multi, "fd buffer for do_multi");
    for (n = 0; n < multi; ++n) {
        if (FUNC14(fd) == -1) {
            FUNC1(bio_err, "pipe failure\n");
            FUNC8(1);
        }
        FUNC11(stdout);
        (void)FUNC0(bio_err);
        if (FUNC13()) {
            FUNC6(fd[1]);
            fds[n] = fd[0];
        } else {
            FUNC6(fd[0]);
            FUNC6(1);
            if (FUNC7(fd[1]) == -1) {
                FUNC1(bio_err, "dup failed\n");
                FUNC8(1);
            }
            FUNC6(fd[1]);
            mr = 1;
            usertime = 0;
            FUNC2(fds);
            return 0;
        }
        FUNC15("Forked child %d\n", n);
    }

    /* for now, assume the pipe is long enough to take all the output */
    for (n = 0; n < multi; ++n) {
        FILE *f;
        char buf[1024];
        char *p;

        f = FUNC10(fds[n], "r");
        while (FUNC12(buf, sizeof(buf), f)) {
            p = FUNC17(buf, '\n');
            if (p)
                *p = '\0';
            if (buf[0] != '+') {
                FUNC1(bio_err,
                           "Don't understand line '%s' from child %d\n", buf,
                           n);
                continue;
            }
            FUNC15("Got: %s from %d\n", buf, n);
            if (FUNC18(buf, "+F:", 3) == 0) {
                int alg;
                int j;

                p = buf + 3;
                alg = FUNC5(FUNC16(&p, sep));
                FUNC16(&p, sep);
                for (j = 0; j < size_num; ++j)
                    results[alg][j] += FUNC4(FUNC16(&p, sep));
            } else if (FUNC18(buf, "+F2:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC5(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC4(FUNC16(&p, sep));
                rsa_results[k][0] += d;

                d = FUNC4(FUNC16(&p, sep));
                rsa_results[k][1] += d;
            }
# ifndef OPENSSL_NO_DSA
            else if (FUNC18(buf, "+F3:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC5(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC4(FUNC16(&p, sep));
                dsa_results[k][0] += d;

                d = FUNC4(FUNC16(&p, sep));
                dsa_results[k][1] += d;
            }
# endif
# ifndef OPENSSL_NO_EC
            else if (FUNC18(buf, "+F4:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC5(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC4(FUNC16(&p, sep));
                ecdsa_results[k][0] += d;

                d = FUNC4(FUNC16(&p, sep));
                ecdsa_results[k][1] += d;
            } else if (FUNC18(buf, "+F5:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC5(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC4(FUNC16(&p, sep));
                ecdh_results[k][0] += d;
            } else if (FUNC18(buf, "+F6:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC5(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC4(FUNC16(&p, sep));
                eddsa_results[k][0] += d;

                d = FUNC4(FUNC16(&p, sep));
                eddsa_results[k][1] += d;
            }
#  ifndef OPENSSL_NO_SM2
            else if (FUNC18(buf, "+F7:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC5(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC4(FUNC16(&p, sep));
                sm2_results[k][0] += d;

                d = FUNC4(FUNC16(&p, sep));
                sm2_results[k][1] += d;
            }
#  endif /* OPENSSL_NO_SM2 */
# endif

            else if (FUNC18(buf, "+H:", 3) == 0) {
                ;
            } else
                FUNC1(bio_err, "Unknown type '%s' from child %d\n", buf,
                           n);
        }

        FUNC9(f);
    }
    FUNC2(fds);
    return 1;
}