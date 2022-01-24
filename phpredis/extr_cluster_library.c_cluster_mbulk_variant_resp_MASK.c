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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {int type; int len; int elements; struct TYPE_3__** element; int /*<<< orphan*/  str; int /*<<< orphan*/  integer; } ;
typedef  TYPE_1__ clusterReply ;

/* Variables and functions */
#define  TYPE_BULK 131 
#define  TYPE_INT 130 
#define  TYPE_LINE 129 
#define  TYPE_MULTIBULK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(clusterReply *r, zval *z_ret)
{
    zval z_sub_ele;
    int i;

    switch(r->type) {
        case TYPE_INT:
            FUNC1(z_ret, r->integer);
            break;
        case TYPE_LINE:
            if (r->str) {
                FUNC3(z_ret, r->str, r->len);
            } else {
                FUNC0(z_ret, 1);
            }
            break;
        case TYPE_BULK:
            if (r->len > -1) {
                FUNC3(z_ret, r->str, r->len);
            } else {
                FUNC2(z_ret);
            }
            break;
        case TYPE_MULTIBULK:
            FUNC5(&z_sub_ele);
            for (i = 0; i < r->elements; i++) {
                FUNC6(r->element[i], &z_sub_ele);
            }
            FUNC4(z_ret, &z_sub_ele);
            break;
        default:
            FUNC0(z_ret, 0);
            break;
    }
}