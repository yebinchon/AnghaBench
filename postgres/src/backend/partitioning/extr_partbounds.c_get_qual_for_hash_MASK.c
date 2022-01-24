#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_6__ {int /*<<< orphan*/  remainder; int /*<<< orphan*/  modulus; } ;
struct TYPE_5__ {int partnatts; scalar_t__* partattrs; int /*<<< orphan*/  partexprs; int /*<<< orphan*/ * parttypcoll; int /*<<< orphan*/ * parttypmod; int /*<<< orphan*/ * parttypid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* PartitionKey ;
typedef  TYPE_2__ PartitionBoundSpec ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  FuncExpr ;

/* Variables and functions */
 int /*<<< orphan*/  BOOLOID ; 
 int /*<<< orphan*/  COERCE_EXPLICIT_CALL ; 
 int /*<<< orphan*/  F_SATISFIES_HASH_PARTITION ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  OIDOID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC14(Relation parent, PartitionBoundSpec *spec)
{
	PartitionKey key = FUNC2(parent);
	FuncExpr   *fexpr;
	Node	   *relidConst;
	Node	   *modulusConst;
	Node	   *remainderConst;
	List	   *args;
	ListCell   *partexprs_item;
	int			i;

	/* Fixed arguments. */
	relidConst = (Node *) FUNC11(OIDOID,
									-1,
									InvalidOid,
									sizeof(Oid),
									FUNC1(FUNC3(parent)),
									false,
									true);

	modulusConst = (Node *) FUNC11(INT4OID,
									  -1,
									  InvalidOid,
									  sizeof(int32),
									  FUNC0(spec->modulus),
									  false,
									  true);

	remainderConst = (Node *) FUNC11(INT4OID,
										-1,
										InvalidOid,
										sizeof(int32),
										FUNC0(spec->remainder),
										false,
										true);

	args = FUNC9(relidConst, modulusConst, remainderConst);
	partexprs_item = FUNC7(key->partexprs);

	/* Add an argument for each key column. */
	for (i = 0; i < key->partnatts; i++)
	{
		Node	   *keyCol;

		/* Left operand */
		if (key->partattrs[i] != 0)
		{
			keyCol = (Node *) FUNC13(1,
									  key->partattrs[i],
									  key->parttypid[i],
									  key->parttypmod[i],
									  key->parttypcoll[i],
									  0);
		}
		else
		{
			keyCol = (Node *) FUNC4(FUNC6(partexprs_item));
			partexprs_item = FUNC10(key->partexprs, partexprs_item);
		}

		args = FUNC5(args, keyCol);
	}

	fexpr = FUNC12(F_SATISFIES_HASH_PARTITION,
						 BOOLOID,
						 args,
						 InvalidOid,
						 InvalidOid,
						 COERCE_EXPLICIT_CALL);

	return FUNC8(fexpr);
}