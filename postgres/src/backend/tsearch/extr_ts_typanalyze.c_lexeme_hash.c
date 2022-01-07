
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int length; scalar_t__ lexeme; } ;
typedef int Size ;
typedef TYPE_1__ LexemeHashKey ;


 int DatumGetUInt32 (int ) ;
 int hash_any (unsigned char const*,int ) ;

__attribute__((used)) static uint32
lexeme_hash(const void *key, Size keysize)
{
 const LexemeHashKey *l = (const LexemeHashKey *) key;

 return DatumGetUInt32(hash_any((const unsigned char *) l->lexeme,
           l->length));
}
