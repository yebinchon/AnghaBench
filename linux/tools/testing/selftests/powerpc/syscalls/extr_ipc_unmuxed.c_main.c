
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipc_unmuxed ;
 int test_harness (int ,char*) ;

int main(void)
{
 return test_harness(ipc_unmuxed, "ipc_unmuxed");
}
