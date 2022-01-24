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
struct TYPE_4__ {int /*<<< orphan*/ * hostname; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;
typedef  TYPE_2__ SSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

int FUNC2(SSL_SESSION *s, const char *hostname)
{
    FUNC0(s->ext.hostname);
    if (hostname == NULL) {
        s->ext.hostname = NULL;
        return 1;
    }
    s->ext.hostname = FUNC1(hostname);

    return s->ext.hostname != NULL;
}