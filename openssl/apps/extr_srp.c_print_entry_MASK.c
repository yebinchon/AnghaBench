#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* db; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ CA_DB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int DB_NUMBER ; 
 size_t DB_srpid ; 
 int /*<<< orphan*/  bio_err ; 
 char** FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(CA_DB *db, int indx, int verbose, char *s)
{
    if (indx >= 0 && verbose) {
        int j;
        char **pp = FUNC1(db->db->data, indx);
        FUNC0(bio_err, "%s \"%s\"\n", s, pp[DB_srpid]);
        for (j = 0; j < DB_NUMBER; j++) {
            FUNC0(bio_err, "  %d = \"%s\"\n", j, pp[j]);
        }
    }
}