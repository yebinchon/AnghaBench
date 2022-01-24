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
struct t_pw {int /*<<< orphan*/  pebuf; } ;
struct t_confent {int dummy; } ;
typedef  int /*<<< orphan*/  passphrase1 ;
typedef  int /*<<< orphan*/  passphrase ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ Configindex ; 
 int /*<<< orphan*/  Passfile ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct t_confent* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,int,char*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct t_pw*,char*,char*,int /*<<< orphan*/ *,struct t_confent*) ; 

void FUNC13(char *name)
{
	char passphrase[128], passphrase1[128];
	FILE *f;
	struct t_confent *tcent;
	struct t_pw eps_passwd;

	/* Get the config entry. */

	if (Configindex <= 0) {
		Configindex = FUNC11();
	}
	tcent = FUNC5(Configindex);
	if (tcent == NULL) {
		FUNC4(stderr, "Invalid configuration file entry.\n");
		FUNC1(1);
	}

	/* Ask for the passphrase twice. */

	FUNC7("Setting passphrase for %s\n", name);

	if (FUNC10(passphrase, sizeof(passphrase), "Enter passphrase: ") < 0) {
		FUNC1(1);
	}
	if (FUNC10(passphrase1, sizeof(passphrase1), "Verify: ") < 0) {
		FUNC1(1);
	}
	if (FUNC8(passphrase, passphrase1) != 0) {
		FUNC4(stderr, "mismatch\n");
		FUNC1(1);
	}

	/* Create the passphrase verifier. */

	FUNC12(&eps_passwd, name, passphrase, NULL, tcent);

	/* Don't need these anymore. */

	FUNC6(passphrase, 0, sizeof(passphrase));
	FUNC6(passphrase1, 0, sizeof(passphrase1));

	/* See if the passphrase file is there; create it if not. */

	if ((f = FUNC3(Passfile, "r+")) == NULL) {
		FUNC0(Passfile, 0400);
	} else {
		FUNC2(f);
	}

	/* Change the passphrase. */

	if (FUNC9(Passfile, &eps_passwd.pebuf) < 0) {
		FUNC4(stderr, "Error changing passphrase\n");
		FUNC1(1);
	}
}