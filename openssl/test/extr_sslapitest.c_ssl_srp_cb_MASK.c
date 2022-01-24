#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  info; int /*<<< orphan*/  v; int /*<<< orphan*/  s; int /*<<< orphan*/  g; int /*<<< orphan*/  N; } ;
typedef  int /*<<< orphan*/  SSL ;
typedef  TYPE_1__ SRP_user_pwd ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int SSL3_AL_FATAL ; 
 int SSL_AD_INTERNAL_ERROR ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vbase ; 

__attribute__((used)) static int FUNC4(SSL *s, int *ad, void *arg)
{
    int ret = SSL3_AL_FATAL;
    char *username;
    SRP_user_pwd *user = NULL;

    username = FUNC2(s);
    if (username == NULL) {
        *ad = SSL_AD_INTERNAL_ERROR;
        goto err;
    }

    user = FUNC0(vbase, username);
    if (user == NULL) {
        *ad = SSL_AD_INTERNAL_ERROR;
        goto err;
    }

    if (FUNC3(s, user->N, user->g, user->s, user->v,
                                 user->info) <= 0) {
        *ad = SSL_AD_INTERNAL_ERROR;
        goto err;
    }

    ret = 0;

 err:
    FUNC1(user);
    return ret;
}