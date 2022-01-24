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
struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* der; struct TYPE_4__* id; } ;
typedef  TYPE_1__ simple_ssl_session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* first ; 

__attribute__((used)) static void FUNC1(void)
{
    simple_ssl_session *sess, *tsess;
    for (sess = first; sess;) {
        FUNC0(sess->id);
        FUNC0(sess->der);
        tsess = sess;
        sess = sess->next;
        FUNC0(tsess);
    }
    first = NULL;
}