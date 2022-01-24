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
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static SSL_SESSION *FUNC5(const char *filename)
{
    SSL_SESSION *sess;
    BIO *f = FUNC1(filename, "r");

    if (f == NULL) {
        FUNC2(bio_err, "Can't open session file %s\n", filename);
        FUNC3(bio_err);
        return NULL;
    }
    sess = FUNC4(f, NULL, 0, NULL);
    if (sess == NULL) {
        FUNC2(bio_err, "Can't parse session file %s\n", filename);
        FUNC3(bio_err);
    }
    FUNC0(f);
    return sess;
}