
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int DefElem ;


 int DefElemAction ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int arg ;
 int defaction ;
 int defname ;
 int defnamespace ;
 int location ;

__attribute__((used)) static void
_outDefElem(StringInfo str, const DefElem *node)
{
 WRITE_NODE_TYPE("DEFELEM");

 WRITE_STRING_FIELD(defnamespace);
 WRITE_STRING_FIELD(defname);
 WRITE_NODE_FIELD(arg);
 WRITE_ENUM_FIELD(defaction, DefElemAction);
 WRITE_LOCATION_FIELD(location);
}
