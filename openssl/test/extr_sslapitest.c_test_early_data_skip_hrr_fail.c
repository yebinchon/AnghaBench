
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int early_data_skip_helper (int,int) ;

__attribute__((used)) static int test_early_data_skip_hrr_fail(int idx)
{
    return early_data_skip_helper(2, idx);
}
