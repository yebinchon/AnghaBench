
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t WORD ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;



__attribute__((used)) static inline DWORD read_ib(void *index_buffer, BOOL indices_are_32bit,
                            DWORD index)
{
    if (indices_are_32bit)
    {
        DWORD *indices = index_buffer;
        return indices[index];
    }
    else
    {
        WORD *indices = index_buffer;
        return indices[index];
    }
}
