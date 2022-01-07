
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ObjectAddress ;


 int DEFAULT_TYPDELIM ;
 int F_RECORD_IN ;
 int F_RECORD_OUT ;
 int F_RECORD_RECV ;
 int F_RECORD_SEND ;
 int InvalidOid ;
 int TYPCATEGORY_COMPOSITE ;
 int TYPTYPE_COMPOSITE ;
 int TypeCreate (int ,char const*,int ,int ,char,int ,int,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int *,int *,int,char,char,int,int ,int,int ) ;

__attribute__((used)) static ObjectAddress
AddNewRelationType(const char *typeName,
       Oid typeNamespace,
       Oid new_rel_oid,
       char new_rel_kind,
       Oid ownerid,
       Oid new_row_type,
       Oid new_array_type)
{
 return
  TypeCreate(new_row_type,
       typeName,
       typeNamespace,
       new_rel_oid,
       new_rel_kind,
       ownerid,
       -1,
       TYPTYPE_COMPOSITE,
       TYPCATEGORY_COMPOSITE,
       0,
       DEFAULT_TYPDELIM,
       F_RECORD_IN,
       F_RECORD_OUT,
       F_RECORD_RECV,
       F_RECORD_SEND,
       InvalidOid,
       InvalidOid,
       InvalidOid,
       InvalidOid,
       0,
       new_array_type,
       InvalidOid,
       ((void*)0),
       ((void*)0),
       0,
       'd',
       'x',
       -1,
       0,
       0,
       InvalidOid);
}
