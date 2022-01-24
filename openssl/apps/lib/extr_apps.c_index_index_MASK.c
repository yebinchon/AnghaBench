#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  arg2; int /*<<< orphan*/  arg1; int /*<<< orphan*/  error; } ;
struct TYPE_5__ {scalar_t__ unique_subject; } ;
struct TYPE_6__ {TYPE_4__* db; TYPE_1__ attributes; } ;
typedef  TYPE_2__ CA_DB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DB_name ; 
 int /*<<< orphan*/  DB_serial ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  index_name ; 
 int /*<<< orphan*/ * index_name_qual ; 
 int /*<<< orphan*/  index_serial ; 

int FUNC4(CA_DB *db)
{
    if (!FUNC3(db->db, DB_serial, NULL,
                             FUNC2(index_serial),
                             FUNC1(index_serial))) {
        FUNC0(bio_err,
                   "error creating serial number index:(%ld,%ld,%ld)\n",
                   db->db->error, db->db->arg1, db->db->arg2);
        return 0;
    }

    if (db->attributes.unique_subject
        && !FUNC3(db->db, DB_name, index_name_qual,
                                FUNC2(index_name),
                                FUNC1(index_name))) {
        FUNC0(bio_err, "error creating name index:(%ld,%ld,%ld)\n",
                   db->db->error, db->db->arg1, db->db->arg2);
        return 0;
    }
    return 1;
}