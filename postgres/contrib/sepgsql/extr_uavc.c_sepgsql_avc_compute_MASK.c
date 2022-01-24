#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct av_decision {int flags; int /*<<< orphan*/  auditdeny; int /*<<< orphan*/  auditallow; int /*<<< orphan*/  allowed; } ;
typedef  int /*<<< orphan*/  security_context_t ;
struct TYPE_5__ {int hash; int hot_cache; int permissive; int tcontext_is_valid; void* ncontext; int /*<<< orphan*/  auditdeny; int /*<<< orphan*/  auditallow; int /*<<< orphan*/  allowed; int /*<<< orphan*/  tclass; void* tcontext; void* scontext; } ;
typedef  TYPE_1__ avc_cache ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int AVC_NUM_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SELINUX_AVD_FLAGS_PERMISSIVE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_PROCEDURE ; 
 int /*<<< orphan*/  SEPG_CLASS_PROCESS ; 
 int /*<<< orphan*/  avc_mem_cxt ; 
 scalar_t__ avc_num_caches ; 
 int /*<<< orphan*/ * avc_slots ; 
 scalar_t__ avc_threshold ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*,int /*<<< orphan*/ ,struct av_decision*) ; 
 char* FUNC10 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

__attribute__((used)) static avc_cache *
FUNC12(const char *scontext, const char *tcontext, uint16 tclass)
{
	char	   *ucontext = NULL;
	char	   *ncontext = NULL;
	MemoryContext oldctx;
	avc_cache  *cache;
	uint32		hash;
	int			index;
	struct av_decision avd;

	hash = FUNC6(scontext, tcontext, tclass);
	index = hash % AVC_NUM_SLOTS;

	/*
	 * Validation check of the supplied security context. Because it always
	 * invoke system-call, frequent check should be avoided. Unless security
	 * policy is reloaded, validation status shall be kept, so we also cache
	 * whether the supplied security context was valid, or not.
	 */
	if (FUNC5((security_context_t) tcontext) != 0)
		ucontext = FUNC8();

	/*
	 * Ask SELinux its access control decision
	 */
	if (!ucontext)
		FUNC9(scontext, tcontext, tclass, &avd);
	else
		FUNC9(scontext, ucontext, tclass, &avd);

	/*
	 * It also caches a security label to be switched when a client labeled as
	 * 'scontext' executes a procedure labeled as 'tcontext', not only access
	 * control decision on the procedure. The security label to be switched
	 * shall be computed uniquely on a pair of 'scontext' and 'tcontext',
	 * thus, it is reasonable to cache the new label on avc, and enables to
	 * reduce unnecessary system calls. It shall be referenced at
	 * sepgsql_needs_fmgr_hook to check whether the supplied function is a
	 * trusted procedure, or not.
	 */
	if (tclass == SEPG_CLASS_DB_PROCEDURE)
	{
		if (!ucontext)
			ncontext = FUNC10(scontext, tcontext,
											  SEPG_CLASS_PROCESS, NULL);
		else
			ncontext = FUNC10(scontext, ucontext,
											  SEPG_CLASS_PROCESS, NULL);
		if (FUNC11(scontext, ncontext) == 0)
		{
			FUNC3(ncontext);
			ncontext = NULL;
		}
	}

	/*
	 * Set up an avc_cache object
	 */
	oldctx = FUNC0(avc_mem_cxt);

	cache = FUNC2(sizeof(avc_cache));

	cache->hash = hash;
	cache->scontext = FUNC4(scontext);
	cache->tcontext = FUNC4(tcontext);
	cache->tclass = tclass;

	cache->allowed = avd.allowed;
	cache->auditallow = avd.auditallow;
	cache->auditdeny = avd.auditdeny;
	cache->hot_cache = true;
	if (avd.flags & SELINUX_AVD_FLAGS_PERMISSIVE)
		cache->permissive = true;
	if (!ucontext)
		cache->tcontext_is_valid = true;
	if (ncontext)
		cache->ncontext = FUNC4(ncontext);

	avc_num_caches++;

	if (avc_num_caches > avc_threshold)
		FUNC7();

	avc_slots[index] = FUNC1(cache, avc_slots[index]);

	FUNC0(oldctx);

	return cache;
}