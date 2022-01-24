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

/* Variables and functions */
 int NID_undef ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(const char *name, void *vlegacy_nid)
{
    int nid;
    int *legacy_nid = vlegacy_nid;

    if (*legacy_nid == -1)       /* We found a clash already */
        return;
    if ((nid = FUNC1(name)) == NID_undef
        && (nid = FUNC0(name)) == NID_undef)
        return;
    if (*legacy_nid != NID_undef && *legacy_nid != nid) {
        *legacy_nid = -1;
        return;
    }
    *legacy_nid = nid;
}