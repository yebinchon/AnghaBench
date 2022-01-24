#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ead_msg_salt {int len; int /*<<< orphan*/  prime; int /*<<< orphan*/  ext_salt; int /*<<< orphan*/  salt; } ;
struct TYPE_7__ {int len; scalar_t__* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  generator; int /*<<< orphan*/  modulus; } ;

/* Variables and functions */
 scalar_t__ EAD_AUTH_MD5 ; 
 struct ead_msg_salt* FUNC0 (int /*<<< orphan*/ ,TYPE_3__) ; 
 int MAXSALTLEN ; 
 scalar_t__ auth_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  msg ; 
 scalar_t__* pw_salt ; 
 TYPE_3__ salt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tc ; 
 TYPE_1__* tcp ; 
 int /*<<< orphan*/  username ; 

__attribute__((used)) static bool
FUNC5(void)
{
	struct ead_msg_salt *sb = FUNC0(msg, salt);

	salt.len = sb->len;
	FUNC2(salt.data, sb->salt, salt.len);

	if (auth_type == EAD_AUTH_MD5) {
		FUNC2(pw_salt, sb->ext_salt, MAXSALTLEN);
		pw_salt[MAXSALTLEN - 1] = 0;
	}

	tcp = FUNC4(sb->prime);
	tc = FUNC3(username, &tcp->modulus, &tcp->generator, &salt);
	if (!tc) {
		FUNC1(stderr, "Client open failed\n");
		return false;
	}

	return true;
}