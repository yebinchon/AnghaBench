
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Scan ;
typedef int NamedTuplestoreScan ;


 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int _outScanInfo (int ,int const*) ;
 int enrname ;

__attribute__((used)) static void
_outNamedTuplestoreScan(StringInfo str, const NamedTuplestoreScan *node)
{
 WRITE_NODE_TYPE("NAMEDTUPLESTORESCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_STRING_FIELD(enrname);
}
