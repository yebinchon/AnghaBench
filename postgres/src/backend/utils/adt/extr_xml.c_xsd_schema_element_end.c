
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendStringInfoString (int ,char*) ;

__attribute__((used)) static void
xsd_schema_element_end(StringInfo result)
{
 appendStringInfoString(result, "</xsd:schema>");
}
