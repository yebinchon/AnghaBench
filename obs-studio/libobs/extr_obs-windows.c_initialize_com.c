
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COINIT_MULTITHREADED ;
 int CoInitializeEx (int ,int ) ;

void initialize_com(void)
{
 CoInitializeEx(0, COINIT_MULTITHREADED);
}
