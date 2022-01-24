#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int nIpAddr ;
typedef  int UINT ;
typedef  char* PCHAR ;
typedef  int /*<<< orphan*/  INT ;
typedef  char CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ bDoShowNumbers ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

PCHAR
FUNC6(BOOL Local, UINT IpAddr, CHAR Name[], INT NameLen)
{
//  struct hostent *phostent;
    UINT nIpAddr;

    /* display dotted decimal */
    nIpAddr = FUNC3(IpAddr);
    if (bDoShowNumbers) {
        FUNC4(Name, "%d.%d.%d.%d",
            (nIpAddr >> 24) & 0xFF,
            (nIpAddr >> 16) & 0xFF,
            (nIpAddr >> 8) & 0xFF,
            (nIpAddr) & 0xFF);
        return Name;
    }

    Name[0] = '\0';

    /* try to resolve the name */
    if (!IpAddr) {
        if (!Local) {
            FUNC4(Name, "%d.%d.%d.%d",
                (nIpAddr >> 24) & 0xFF,
                (nIpAddr >> 16) & 0xFF,
                (nIpAddr >> 8) & 0xFF,
                (nIpAddr) & 0xFF);
        } else {
            if (FUNC2(Name, NameLen) != 0)
                FUNC0(FUNC1());
        }
    } else if (IpAddr == 0x0100007f) {
        if (Local) {
            if (FUNC2(Name, NameLen) != 0)
                FUNC0(FUNC1());
        } else {
            FUNC5(Name, "localhost", 10);
        }
//  } else if (phostent = gethostbyaddr((char*)&ipaddr, sizeof(nipaddr), PF_INET)) {
//      strcpy(name, phostent->h_name);
    } else {
        FUNC4(Name, "%d.%d.%d.%d",
            ((nIpAddr >> 24) & 0x000000FF),
            ((nIpAddr >> 16) & 0x000000FF),
            ((nIpAddr >> 8) & 0x000000FF),
            ((nIpAddr) & 0x000000FF));
    }
    return Name;
}