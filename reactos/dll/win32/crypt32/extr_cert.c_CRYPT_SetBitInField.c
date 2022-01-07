
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BitField {int cIndexes; int* indexes; } ;
typedef int DWORD ;


 int BITS_PER_DWORD ;
 int* CryptMemAlloc (int) ;
 int* CryptMemRealloc (int*,int) ;

__attribute__((used)) static void CRYPT_SetBitInField(struct BitField *field, DWORD bit)
{
    DWORD indexIndex = bit / BITS_PER_DWORD;

    if (indexIndex + 1 > field->cIndexes)
    {
        if (field->cIndexes)
            field->indexes = CryptMemRealloc(field->indexes,
             (indexIndex + 1) * sizeof(DWORD));
        else
            field->indexes = CryptMemAlloc(sizeof(DWORD));
        if (field->indexes)
        {
            field->indexes[indexIndex] = 0;
            field->cIndexes = indexIndex + 1;
        }
    }
    if (field->indexes)
        field->indexes[indexIndex] |= 1 << (bit % BITS_PER_DWORD);
}
