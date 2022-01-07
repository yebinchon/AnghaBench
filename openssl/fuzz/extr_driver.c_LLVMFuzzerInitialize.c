
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FuzzerInitialize (int*,char***) ;

int LLVMFuzzerInitialize(int *argc, char ***argv)
{
    return FuzzerInitialize(argc, argv);
}
