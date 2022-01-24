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
struct num2name_data_st {size_t idx; char const* name; } ;
typedef  int /*<<< orphan*/  OSSL_NAMEMAP ;

/* Variables and functions */
 int /*<<< orphan*/  do_num2name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,struct num2name_data_st*) ; 

const char *FUNC1(const OSSL_NAMEMAP *namemap, int number,
                                  size_t idx)
{
    struct num2name_data_st data;

    data.idx = idx;
    data.name = NULL;
    FUNC0(namemap, number, do_num2name, &data);
    return data.name;
}