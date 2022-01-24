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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static int FUNC5(const char *filename, SSL_SESSION *sess)
{
    BIO *f = FUNC1(filename, "w");

    if (sess == NULL) {
        FUNC2(bio_err, "No session information\n");
        return 0;
    }
    if (f == NULL) {
        FUNC2(bio_err, "Can't open session file %s\n", filename);
        FUNC3(bio_err);
        return 0;
    }
    FUNC4(f, sess);
    FUNC0(f);
    return 1;
}