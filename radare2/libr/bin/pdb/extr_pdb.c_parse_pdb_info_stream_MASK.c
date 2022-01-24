#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data4; int /*<<< orphan*/  data3; int /*<<< orphan*/  data2; int /*<<< orphan*/  data1; } ;
struct TYPE_4__ {char* names; int cb_names; TYPE_1__ guid; int /*<<< orphan*/  age; int /*<<< orphan*/  time_date_stamp; int /*<<< orphan*/  version; } ;
typedef  TYPE_2__ SPDBInfoStream ;
typedef  int /*<<< orphan*/  R_STREAM_FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC2(void *parsed_pdb_stream, R_STREAM_FILE *stream) {
	SPDBInfoStream *tmp = (SPDBInfoStream *) parsed_pdb_stream;

	tmp->names = 0;

	FUNC1 (stream, 4, (char *) &tmp->/*data.*/ version);
	FUNC1 (stream, 4, (char *) &tmp->/*data.*/ time_date_stamp);
	FUNC1 (stream, 4, (char *) &tmp->/*data.*/ age);
	FUNC1 (stream, 4, (char *) &tmp->/*data.*/ guid.data1);
	FUNC1 (stream, 2, (char *) &tmp->/*data.*/ guid.data2);
	FUNC1 (stream, 2, (char *) &tmp->/*data.*/ guid.data3);
	FUNC1 (stream, 8, (char *) &tmp->/*data.*/ guid.data4);
	FUNC1 (stream, 4, (char *) &tmp->/*data.*/ cb_names);

	tmp->/*data.*/ names = (char *) FUNC0 (1, tmp->/*data.*/ cb_names);
	FUNC1 (stream, tmp->/*data.*/ cb_names, tmp->/*data.*/ names);
}