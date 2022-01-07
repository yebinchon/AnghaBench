
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int NamespaceInfo ;
typedef int Archive ;


 int fatal (char*,int ) ;
 int * findNamespaceByOid (int ) ;

__attribute__((used)) static NamespaceInfo *
findNamespace(Archive *fout, Oid nsoid)
{
 NamespaceInfo *nsinfo;

 nsinfo = findNamespaceByOid(nsoid);
 if (nsinfo == ((void*)0))
  fatal("schema with OID %u does not exist", nsoid);
 return nsinfo;
}
