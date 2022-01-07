
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int PCHAR ;


 int CLASS_ANY ;
 int CLASS_IN ;
 int ClassAny ;
 int ClassIN ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;

USHORT ClassNametoClassID( PCHAR ClassName )
{
    if( !strncmp( ClassName, ClassIN, strlen( ClassIN ) ) ) return CLASS_IN;
    if( !strncmp( ClassName, ClassAny, strlen( ClassAny ) ) ) return CLASS_ANY;

    return 0;
}
