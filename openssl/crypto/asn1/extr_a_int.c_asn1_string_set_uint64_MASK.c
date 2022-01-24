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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  tbuf ;
typedef  int /*<<< orphan*/  r ;
struct TYPE_4__ {int type; } ;
typedef  TYPE_1__ ASN1_STRING ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,unsigned char*,int) ; 
 size_t FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(ASN1_STRING *a, uint64_t r, int itype)
{
    unsigned char tbuf[sizeof(r)];
    size_t off;

    a->type = itype;
    off = FUNC1(tbuf, r);
    return FUNC0(a, tbuf + off, sizeof(tbuf) - off);
}