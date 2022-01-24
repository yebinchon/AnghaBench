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
typedef  int /*<<< orphan*/  plperl_proc_ptr ;
typedef  int /*<<< orphan*/  plperl_proc_key ;
typedef  int /*<<< orphan*/  plperl_interp_desc ;
typedef  int /*<<< orphan*/  hash_ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  PGC_SUSET ; 
 int /*<<< orphan*/  PGC_USERSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEXTDOMAIN ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  plperl_held_interp ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* plperl_interp_hash ; 
 int /*<<< orphan*/  plperl_on_init ; 
 int /*<<< orphan*/  plperl_on_plperl_init ; 
 int /*<<< orphan*/  plperl_on_plperlu_init ; 
 int /*<<< orphan*/  plperl_opmask ; 
 void* plperl_proc_hash ; 
 int /*<<< orphan*/  plperl_use_strict ; 

void
FUNC9(void)
{
	/*
	 * Be sure we do initialization only once.
	 *
	 * If initialization fails due to, e.g., plperl_init_interp() throwing an
	 * exception, then we'll return here on the next usage and the user will
	 * get a rather cryptic: ERROR:  attempt to redefine parameter
	 * "plperl.use_strict"
	 */
	static bool inited = false;
	HASHCTL		hash_ctl;

	if (inited)
		return;

	/*
	 * Support localized messages.
	 */
	FUNC7(TEXTDOMAIN);

	/*
	 * Initialize plperl's GUCs.
	 */
	FUNC0("plperl.use_strict",
							 FUNC4("If true, trusted and untrusted Perl code will be compiled in strict mode."),
							 NULL,
							 &plperl_use_strict,
							 false,
							 PGC_USERSET, 0,
							 NULL, NULL, NULL);

	/*
	 * plperl.on_init is marked PGC_SIGHUP to support the idea that it might
	 * be executed in the postmaster (if plperl is loaded into the postmaster
	 * via shared_preload_libraries).  This isn't really right either way,
	 * though.
	 */
	FUNC1("plperl.on_init",
							   FUNC4("Perl initialization code to execute when a Perl interpreter is initialized."),
							   NULL,
							   &plperl_on_init,
							   NULL,
							   PGC_SIGHUP, 0,
							   NULL, NULL, NULL);

	/*
	 * plperl.on_plperl_init is marked PGC_SUSET to avoid issues whereby a
	 * user who might not even have USAGE privilege on the plperl language
	 * could nonetheless use SET plperl.on_plperl_init='...' to influence the
	 * behaviour of any existing plperl function that they can execute (which
	 * might be SECURITY DEFINER, leading to a privilege escalation).  See
	 * http://archives.postgresql.org/pgsql-hackers/2010-02/msg00281.php and
	 * the overall thread.
	 *
	 * Note that because plperl.use_strict is USERSET, a nefarious user could
	 * set it to be applied against other people's functions.  This is judged
	 * OK since the worst result would be an error.  Your code oughta pass
	 * use_strict anyway ;-)
	 */
	FUNC1("plperl.on_plperl_init",
							   FUNC4("Perl initialization code to execute once when plperl is first used."),
							   NULL,
							   &plperl_on_plperl_init,
							   NULL,
							   PGC_SUSET, 0,
							   NULL, NULL, NULL);

	FUNC1("plperl.on_plperlu_init",
							   FUNC4("Perl initialization code to execute once when plperlu is first used."),
							   NULL,
							   &plperl_on_plperlu_init,
							   NULL,
							   PGC_SUSET, 0,
							   NULL, NULL, NULL);

	FUNC2("plperl");

	/*
	 * Create hash tables.
	 */
	FUNC6(&hash_ctl, 0, sizeof(hash_ctl));
	hash_ctl.keysize = sizeof(Oid);
	hash_ctl.entrysize = sizeof(plperl_interp_desc);
	plperl_interp_hash = FUNC5("PL/Perl interpreters",
									 8,
									 &hash_ctl,
									 HASH_ELEM | HASH_BLOBS);

	FUNC6(&hash_ctl, 0, sizeof(hash_ctl));
	hash_ctl.keysize = sizeof(plperl_proc_key);
	hash_ctl.entrysize = sizeof(plperl_proc_ptr);
	plperl_proc_hash = FUNC5("PL/Perl procedures",
								   32,
								   &hash_ctl,
								   HASH_ELEM | HASH_BLOBS);

	/*
	 * Save the default opmask.
	 */
	FUNC3(plperl_opmask);

	/*
	 * Create the first Perl interpreter, but only partially initialize it.
	 */
	plperl_held_interp = FUNC8();

	inited = true;
}