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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;
typedef  struct timeval pid_t ;
typedef  int /*<<< orphan*/  pid ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct timeval*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SALT_SIZE ; 
 struct timeval FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(unsigned char *salt) {
    EVP_MD_CTX ctx;
    unsigned char md[DIGEST_SIZE];
    struct timeval tv;
    pid_t pid;
    unsigned int rlen;

    if (FUNC4(salt, SALT_SIZE) == 1) {
        return;
    }
    FUNC6(&tv, 0);
    pid = FUNC5();
    FUNC1(&ctx, FUNC3());
    FUNC2(&ctx, &tv, sizeof(tv));
    FUNC2(&ctx, &pid, sizeof(pid));
    FUNC0(&ctx, md, &rlen);
    FUNC7(salt, md, SALT_SIZE);
}