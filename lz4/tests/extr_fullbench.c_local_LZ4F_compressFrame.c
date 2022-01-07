
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LZ4F_compressFrame (char*,int ,char const*,size_t,int *) ;
 int LZ4F_compressFrameBound (size_t,int *) ;
 int assert (int) ;

__attribute__((used)) static int local_LZ4F_compressFrame(const char* in, char* out, int inSize)
{
    assert(inSize >= 0);
    return (int)LZ4F_compressFrame(out, LZ4F_compressFrameBound((size_t)inSize, ((void*)0)), in, (size_t)inSize, ((void*)0));
}
