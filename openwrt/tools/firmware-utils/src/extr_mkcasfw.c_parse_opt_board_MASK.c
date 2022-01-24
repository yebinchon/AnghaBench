#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int header_type; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int type; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {int type; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_1__ nfs; TYPE_2__ cas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ERR_FATAL ; 
#define  HEADER_TYPE_CAS 129 
#define  HEADER_TYPE_NFS 128 
 TYPE_4__* board ; 
 TYPE_4__* FUNC2 (char*) ; 
 TYPE_3__ header ; 
 scalar_t__ FUNC3 (char,char*) ; 

int
FUNC4(char ch, char *arg)
{

	FUNC0(1,"parsing board option: -%c %s", ch, arg);

	if (board != NULL) {
		FUNC1("only one board option allowed");
		return ERR_FATAL;
	}

	if (FUNC3(ch, arg))
		return ERR_FATAL;

	board = FUNC2(arg);
	if (board == NULL){
		FUNC1("invalid/unknown board specified: %s", arg);
		return ERR_FATAL;
	}

	switch (board->header_type) {
	case HEADER_TYPE_CAS:
		header.cas.type = HEADER_TYPE_CAS;
		header.cas.id = board->id;
		break;
	case HEADER_TYPE_NFS:
		header.nfs.type = HEADER_TYPE_NFS;
		header.nfs.id = board->id;
		break;
	default:
		FUNC1("internal error, unknown header type\n");
		return ERR_FATAL;
	}

	return 0;
}