
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLpgSQL_type ;
typedef int Oid ;


 int ERRCODE_UNDEFINED_TABLE ;
 int ERROR ;
 int InvalidOid ;
 int OidIsValid (int ) ;
 int RelnameGetRelid (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int get_rel_type_id (int ) ;
 int makeTypeName (char*) ;
 int * plpgsql_build_datatype (int ,int,int ,int ) ;

PLpgSQL_type *
plpgsql_parse_wordrowtype(char *ident)
{
 Oid classOid;
 classOid = RelnameGetRelid(ident);
 if (!OidIsValid(classOid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_TABLE),
     errmsg("relation \"%s\" does not exist", ident)));


 return plpgsql_build_datatype(get_rel_type_id(classOid), -1, InvalidOid,
          makeTypeName(ident));
}
