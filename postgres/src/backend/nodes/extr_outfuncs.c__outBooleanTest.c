
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int BooleanTest ;


 int BoolTestType ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int arg ;
 int booltesttype ;
 int location ;

__attribute__((used)) static void
_outBooleanTest(StringInfo str, const BooleanTest *node)
{
 WRITE_NODE_TYPE("BOOLEANTEST");

 WRITE_NODE_FIELD(arg);
 WRITE_ENUM_FIELD(booltesttype, BoolTestType);
 WRITE_LOCATION_FIELD(location);
}
