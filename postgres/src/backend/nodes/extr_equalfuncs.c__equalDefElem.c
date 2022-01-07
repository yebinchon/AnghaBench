
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DefElem ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int arg ;
 int defaction ;
 int defname ;
 int defnamespace ;
 int location ;

__attribute__((used)) static bool
_equalDefElem(const DefElem *a, const DefElem *b)
{
 COMPARE_STRING_FIELD(defnamespace);
 COMPARE_STRING_FIELD(defname);
 COMPARE_NODE_FIELD(arg);
 COMPARE_SCALAR_FIELD(defaction);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
