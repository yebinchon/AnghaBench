#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* keyform; void* certform; struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef  TYPE_1__ SSL_EXCERT ;

/* Variables and functions */
 void* FORMAT_PEM ; 
 TYPE_1__* FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(SSL_EXCERT **pexc)
{
    SSL_EXCERT *exc = FUNC0(sizeof(*exc), "prepend cert");

    FUNC1(exc, 0, sizeof(*exc));

    exc->next = *pexc;
    *pexc = exc;

    if (exc->next) {
        exc->certform = exc->next->certform;
        exc->keyform = exc->next->keyform;
        exc->next->prev = exc;
    } else {
        exc->certform = FORMAT_PEM;
        exc->keyform = FORMAT_PEM;
    }
    return 1;

}