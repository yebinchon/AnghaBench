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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *version, SSL *ssl, int setting)
{
    if (version != NULL) {
        int ver = FUNC2(version);
        if (ver < 0) {
            FUNC0(bio_err, "Error parsing: %s\n", version);
            return 0;
        }
        return FUNC1(ssl, setting, ver, NULL);
    }
    return 1;
}