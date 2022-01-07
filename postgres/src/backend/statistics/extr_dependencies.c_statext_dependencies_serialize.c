
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int bytea ;
struct TYPE_5__ {int ndeps; int magic; int type; TYPE_1__** deps; } ;
struct TYPE_4__ {int nattributes; int degree; int* attributes; } ;
typedef int Size ;
typedef TYPE_1__ MVDependency ;
typedef TYPE_2__ MVDependencies ;
typedef int AttrNumber ;


 int Assert (int) ;
 int SET_VARSIZE (int *,int) ;
 int SizeOfHeader ;
 int SizeOfItem (int) ;
 char* VARDATA (int *) ;
 int VARHDRSZ ;
 int memcpy (char*,int*,int) ;
 scalar_t__ palloc0 (int) ;

bytea *
statext_dependencies_serialize(MVDependencies *dependencies)
{
 int i;
 bytea *output;
 char *tmp;
 Size len;


 len = VARHDRSZ + SizeOfHeader;


 for (i = 0; i < dependencies->ndeps; i++)
  len += SizeOfItem(dependencies->deps[i]->nattributes);

 output = (bytea *) palloc0(len);
 SET_VARSIZE(output, len);

 tmp = VARDATA(output);


 memcpy(tmp, &dependencies->magic, sizeof(uint32));
 tmp += sizeof(uint32);
 memcpy(tmp, &dependencies->type, sizeof(uint32));
 tmp += sizeof(uint32);
 memcpy(tmp, &dependencies->ndeps, sizeof(uint32));
 tmp += sizeof(uint32);


 for (i = 0; i < dependencies->ndeps; i++)
 {
  MVDependency *d = dependencies->deps[i];

  memcpy(tmp, &d->degree, sizeof(double));
  tmp += sizeof(double);

  memcpy(tmp, &d->nattributes, sizeof(AttrNumber));
  tmp += sizeof(AttrNumber);

  memcpy(tmp, d->attributes, sizeof(AttrNumber) * d->nattributes);
  tmp += sizeof(AttrNumber) * d->nattributes;


  Assert(tmp <= ((char *) output + len));
 }


 Assert(tmp == ((char *) output + len));

 return output;
}
