
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int UINT ;



__attribute__((used)) static WORD vertex_index(UINT slices, int slice, int stack)
{
    return stack*slices+slice+1;
}
