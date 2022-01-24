#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void** children; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 

__attribute__((used)) static Node *FUNC1(int degree, int *nkeys)
{
    Node *root = FUNC0(0, degree);
    /* Create nodes for single pixels. */
    for (*nkeys = 0; *nkeys < degree; (*nkeys)++)
        root->children[*nkeys] = FUNC0(*nkeys, degree);
    *nkeys += 2; /* skip clear code and stop code */
    return root;
}