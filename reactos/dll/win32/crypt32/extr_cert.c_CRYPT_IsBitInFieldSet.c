
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BitField {int* indexes; int cIndexes; } ;
typedef size_t DWORD ;
typedef int BOOL ;


 size_t BITS_PER_DWORD ;
 int assert (int ) ;

__attribute__((used)) static BOOL CRYPT_IsBitInFieldSet(const struct BitField *field, DWORD bit)
{
    BOOL set;
    DWORD indexIndex = bit / BITS_PER_DWORD;

    assert(field->cIndexes);
    set = field->indexes[indexIndex] & (1 << (bit % BITS_PER_DWORD));
    return set;
}
