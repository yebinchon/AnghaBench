
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t WORD ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;



__attribute__((used)) static inline void write_ib(void *index_buffer, BOOL indices_are_32bit,
                            DWORD index, DWORD value)
{
    if (indices_are_32bit)
    {
        DWORD *indices = index_buffer;
        indices[index] = value;
    }
    else
    {
        WORD *indices = index_buffer;
        indices[index] = value;
    }
}
