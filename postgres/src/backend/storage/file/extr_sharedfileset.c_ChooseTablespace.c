
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_3__ {size_t ntablespaces; int * tablespaces; } ;
typedef TYPE_1__ SharedFileSet ;
typedef int Oid ;


 size_t hash_any (unsigned char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static Oid
ChooseTablespace(const SharedFileSet *fileset, const char *name)
{
 uint32 hash = hash_any((const unsigned char *) name, strlen(name));

 return fileset->tablespaces[hash % fileset->ntablespaces];
}
