#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 

__attribute__((used)) static Node *FUNC1(uint16_t key, int degree)
{
    Node *node = FUNC0(1, sizeof(*node) + degree * sizeof(Node *));
    if (node)
        node->key = key;
    return node;
}