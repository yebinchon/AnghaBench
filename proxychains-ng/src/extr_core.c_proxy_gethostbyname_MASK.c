#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct hostent {char** h_addr_list; char** h_aliases; int h_length; int /*<<< orphan*/  h_addrtype; } ;
struct gethostbyname_data {char** resolved_addr_p; scalar_t__ resolved_addr; struct hostent hostent_space; } ;
struct TYPE_14__ {scalar_t__ as_int; } ;
typedef  TYPE_5__ ip_type4 ;
typedef  scalar_t__ in_addr_t ;
typedef  int /*<<< orphan*/  buff ;
struct TYPE_17__ {scalar_t__ as_int; } ;
struct TYPE_12__ {scalar_t__ as_int; } ;
struct TYPE_13__ {TYPE_3__ v4; } ;
struct TYPE_16__ {TYPE_4__ addr; } ;
struct TYPE_10__ {scalar_t__ as_int; } ;
struct TYPE_11__ {TYPE_1__ v4; } ;
struct TYPE_15__ {TYPE_2__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_9__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gethostbyname_data*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 TYPE_5__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*) ; 
 TYPE_7__ ip_type_invalid ; 
 TYPE_6__ ip_type_localhost ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

struct hostent *FUNC9(const char *name, struct gethostbyname_data* data) {
	FUNC1();
	char buff[256];

	data->resolved_addr_p[0] = (char *) &data->resolved_addr;
	data->resolved_addr_p[1] = NULL;

	data->hostent_space.h_addr_list = data->resolved_addr_p;
	// let aliases point to the NULL member, mimicking an empty list.
	data->hostent_space.h_aliases = &data->resolved_addr_p[1];

	data->resolved_addr = 0;
	data->hostent_space.h_addrtype = AF_INET;
	data->hostent_space.h_length = sizeof(in_addr_t);

	FUNC4(buff, sizeof(buff));

	if(!FUNC7(buff, name)) {
		data->resolved_addr = FUNC6(buff);
		if(data->resolved_addr == (in_addr_t) (-1))
			data->resolved_addr = (in_addr_t) (ip_type_localhost.addr.v4.as_int);
		goto retname;
	}

	// this iterates over the "known hosts" db, usually /etc/hosts
	ip_type4 hdb_res = FUNC5(name);
	if(hdb_res.as_int != ip_type_invalid.addr.v4.as_int) {
		data->resolved_addr = hdb_res.as_int;
		goto retname;
	}
	
	data->resolved_addr = FUNC2((char*) name, FUNC8(name)).as_int;
	if(data->resolved_addr == (in_addr_t) ip_type_invalid.addr.v4.as_int) return NULL;

	retname:

	FUNC3(data, (char*) name);
	
	FUNC0("return hostent space\n");
	
	return &data->hostent_space;
}