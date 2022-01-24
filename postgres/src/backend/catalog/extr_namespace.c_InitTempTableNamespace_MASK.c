#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  namespaceName ;
struct TYPE_2__ {void* tempNamespaceId; } ;
typedef  void* Oid ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  BOOTSTRAP_SUPERUSERID ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_READ_ONLY_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ InvalidSubTransactionId ; 
 scalar_t__ FUNC5 () ; 
 int MyBackendId ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 TYPE_1__* MyProc ; 
 int NAMEDATALEN ; 
 void* FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int baseSearchPathValid ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (char*,int) ; 
 void* myTempNamespace ; 
 scalar_t__ myTempNamespaceSubID ; 
 void* myTempToastNamespace ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC17(void)
{
	char		namespaceName[NAMEDATALEN];
	Oid			namespaceId;
	Oid			toastspaceId;

	FUNC0(!FUNC7(myTempNamespace));

	/*
	 * First, do permission check to see if we are authorized to make temp
	 * tables.  We use a nonstandard error message here since "databasename:
	 * permission denied" might be a tad cryptic.
	 *
	 * Note that ACL_CREATE_TEMP rights are rechecked in pg_namespace_aclmask;
	 * that's necessary since current user ID could change during the session.
	 * But there's no need to make the namespace in the first place until a
	 * temp table creation request is made by someone with appropriate rights.
	 */
	if (FUNC15(MyDatabaseId, FUNC4(),
							 ACL_CREATE_TEMP) != ACLCHECK_OK)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC12("permission denied to create temporary tables in database \"%s\"",
						FUNC13(MyDatabaseId))));

	/*
	 * Do not allow a Hot Standby session to make temp tables.  Aside from
	 * problems with modifying the system catalogs, there is a naming
	 * conflict: pg_temp_N belongs to the session with BackendId N on the
	 * master, not to a hot standby session with the same BackendId.  We
	 * should not be able to get here anyway due to XactReadOnly checks, but
	 * let's just make real sure.  Note that this also backstops various
	 * operations that allow XactReadOnly transactions to modify temp tables;
	 * they'd need RecoveryInProgress checks if not for this.
	 */
	if (FUNC8())
		FUNC10(ERROR,
				(FUNC11(ERRCODE_READ_ONLY_SQL_TRANSACTION),
				 FUNC12("cannot create temporary tables during recovery")));

	/* Parallel workers can't create temporary tables, either. */
	if (FUNC5())
		FUNC10(ERROR,
				(FUNC11(ERRCODE_READ_ONLY_SQL_TRANSACTION),
				 FUNC12("cannot create temporary tables during a parallel operation")));

	FUNC16(namespaceName, sizeof(namespaceName), "pg_temp_%d", MyBackendId);

	namespaceId = FUNC14(namespaceName, true);
	if (!FUNC7(namespaceId))
	{
		/*
		 * First use of this temp namespace in this database; create it. The
		 * temp namespaces are always owned by the superuser.  We leave their
		 * permissions at default --- i.e., no access except to superuser ---
		 * to ensure that unprivileged users can't peek at other backends'
		 * temp tables.  This works because the places that access the temp
		 * namespace for my own backend skip permissions checks on it.
		 */
		namespaceId = FUNC6(namespaceName, BOOTSTRAP_SUPERUSERID,
									  true);
		/* Advance command counter to make namespace visible */
		FUNC2();
	}
	else
	{
		/*
		 * If the namespace already exists, clean it out (in case the former
		 * owner crashed without doing so).
		 */
		FUNC9(namespaceId);
	}

	/*
	 * If the corresponding toast-table namespace doesn't exist yet, create
	 * it. (We assume there is no need to clean it out if it does exist, since
	 * dropping a parent table should make its toast table go away.)
	 */
	FUNC16(namespaceName, sizeof(namespaceName), "pg_toast_temp_%d",
			 MyBackendId);

	toastspaceId = FUNC14(namespaceName, true);
	if (!FUNC7(toastspaceId))
	{
		toastspaceId = FUNC6(namespaceName, BOOTSTRAP_SUPERUSERID,
									   true);
		/* Advance command counter to make namespace visible */
		FUNC2();
	}

	/*
	 * Okay, we've prepared the temp namespace ... but it's not committed yet,
	 * so all our work could be undone by transaction rollback.  Set flag for
	 * AtEOXact_Namespace to know what to do.
	 */
	myTempNamespace = namespaceId;
	myTempToastNamespace = toastspaceId;

	/*
	 * Mark MyProc as owning this namespace which other processes can use to
	 * decide if a temporary namespace is in use or not.  We assume that
	 * assignment of namespaceId is an atomic operation.  Even if it is not,
	 * the temporary relation which resulted in the creation of this temporary
	 * namespace is still locked until the current transaction commits, and
	 * its pg_namespace row is not visible yet.  However it does not matter:
	 * this flag makes the namespace as being in use, so no objects created on
	 * it would be removed concurrently.
	 */
	MyProc->tempNamespaceId = namespaceId;

	/* It should not be done already. */
	FUNC1(myTempNamespaceSubID == InvalidSubTransactionId);
	myTempNamespaceSubID = FUNC3();

	baseSearchPathValid = false;	/* need to rebuild list */
}