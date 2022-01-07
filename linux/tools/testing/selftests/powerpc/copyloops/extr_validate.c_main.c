
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPY_LOOP ;
 int str (int ) ;
 int test_copy_loop ;
 int test_harness (int ,int ) ;

int main(void)
{
 return test_harness(test_copy_loop, str(COPY_LOOP));
}
