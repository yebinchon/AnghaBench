
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64 ;
typedef int StringInfo ;


 int ERRCODE_DATA_EXCEPTION ;
 int ERROR ;
 scalar_t__ SPI_OK_SELECT ;
 int SPI_connect () ;
 scalar_t__ SPI_execute (char const*,int,int ) ;
 int SPI_finish () ;
 scalar_t__ SPI_processed ;
 int SPI_sql_row_to_xmlelement (scalar_t__,int ,char*,int,int,char const*,int) ;
 int appendStringInfo (int ,char*,char const*) ;
 int appendStringInfoChar (int ,char) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int makeStringInfo () ;
 char* map_sql_identifier_to_xml_name (char*,int,int) ;
 int xmldata_root_element_end (int ,char*) ;
 int xmldata_root_element_start (int ,char*,char const*,char const*,int) ;

__attribute__((used)) static StringInfo
query_to_xml_internal(const char *query, char *tablename,
       const char *xmlschema, bool nulls, bool tableforest,
       const char *targetns, bool top_level)
{
 StringInfo result;
 char *xmltn;
 uint64 i;

 if (tablename)
  xmltn = map_sql_identifier_to_xml_name(tablename, 1, 0);
 else
  xmltn = "table";

 result = makeStringInfo();

 SPI_connect();
 if (SPI_execute(query, 1, 0) != SPI_OK_SELECT)
  ereport(ERROR,
    (errcode(ERRCODE_DATA_EXCEPTION),
     errmsg("invalid query")));

 if (!tableforest)
 {
  xmldata_root_element_start(result, xmltn, xmlschema,
           targetns, top_level);
  appendStringInfoChar(result, '\n');
 }

 if (xmlschema)
  appendStringInfo(result, "%s\n\n", xmlschema);

 for (i = 0; i < SPI_processed; i++)
  SPI_sql_row_to_xmlelement(i, result, tablename, nulls,
          tableforest, targetns, top_level);

 if (!tableforest)
  xmldata_root_element_end(result, xmltn);

 SPI_finish();

 return result;
}
