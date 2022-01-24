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
struct TYPE_4__ {float _11; float _22; float _33; float _44; } ;
typedef  TYPE_1__ D3DMATRIX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(D3DMATRIX *m)
{
    FUNC0(m, 0, sizeof(D3DMATRIX));
    m->_11 = m->_22 = m->_33 = m->_44 = 1.0f;
}