
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tbl_testdata_pos ;
 int test_table (int ,int) ;

__attribute__((used)) static int test_table_pos(int idx)
{
    return test_table(tbl_testdata_pos, idx);
}
