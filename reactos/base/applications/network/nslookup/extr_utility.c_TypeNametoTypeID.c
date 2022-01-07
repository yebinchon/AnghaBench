
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int PCHAR ;


 int TYPE_A ;
 int TYPE_ANY ;
 int TYPE_CNAME ;
 int TYPE_MX ;
 int TYPE_NS ;
 int TYPE_PTR ;
 int TYPE_SOA ;
 int TYPE_WKS ;
 int TypeA ;
 int TypeAny ;
 int TypeCNAME ;
 int TypeMX ;
 int TypeNS ;
 int TypePTR ;
 int TypeSOA ;
 int TypeSRV ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;

USHORT TypeNametoTypeID( PCHAR TypeName )
{
    if( !strncmp( TypeName, TypeA, strlen( TypeA ) ) ) return TYPE_A;
    if( !strncmp( TypeName, TypeNS, strlen( TypeNS ) ) ) return TYPE_NS;
    if( !strncmp( TypeName, TypeCNAME, strlen( TypeCNAME ) ) ) return TYPE_CNAME;
    if( !strncmp( TypeName, TypeSOA, strlen( TypeSOA ) ) ) return TYPE_SOA;
    if( !strncmp( TypeName, TypeSRV, strlen( TypeSRV ) ) ) return TYPE_WKS;
    if( !strncmp( TypeName, TypePTR, strlen( TypePTR ) ) ) return TYPE_PTR;
    if( !strncmp( TypeName, TypeMX, strlen( TypeMX ) ) ) return TYPE_MX;
    if( !strncmp( TypeName, TypeAny, strlen( TypeAny ) ) ) return TYPE_ANY;

    return 0;
}
