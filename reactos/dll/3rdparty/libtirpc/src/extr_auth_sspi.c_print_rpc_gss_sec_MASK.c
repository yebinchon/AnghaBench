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
struct rpc_sspi_sec {unsigned char qop; unsigned char svc; unsigned char cred; TYPE_1__* mech; } ;
struct TYPE_2__ {int length; scalar_t__ elements; } ;

/* Variables and functions */
 int /*<<< orphan*/  fd_out ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC1(struct rpc_sspi_sec *ptr)
{
    int i;
    char *p;

	FUNC0(fd_out, "rpc_gss_sec:");
	if(ptr->mech == NULL)
		FUNC0(fd_out, "NULL gss_OID mech");
	else {
		FUNC0(fd_out, "     mechanism_OID: {");
		p = (char *)ptr->mech->elements;
		for (i=0; i < ptr->mech->length; i++)
			/* First byte of OIDs encoded to save a byte */
			if (i == 0) {
				int first, second;
				if (*p < 40) {
					first = 0;
					second = *p;
				}
				else if (40 <= *p && *p < 80) {
					first = 1;
					second = *p - 40;
				}
				else if (80 <= *p && *p < 127) {
					first = 2;
					second = *p - 80;
				}
				else {
					/* Invalid value! */
					first = -1;
					second = -1;
				}
				FUNC0(fd_out, " %u %u", first, second);
				p++;
			}
			else {
				FUNC0(fd_out, " %u", (unsigned char)*p++);
			}
		FUNC0(fd_out, " }\n");
	}
	FUNC0(fd_out, "     qop: %d\n", ptr->qop);
	FUNC0(fd_out, "     service: %d\n", ptr->svc);
	FUNC0(fd_out, "     cred: %c\n", ptr->cred);
}