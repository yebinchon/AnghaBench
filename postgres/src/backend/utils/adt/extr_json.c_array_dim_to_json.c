
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Oid ;
typedef int JsonTypeCategory ;
typedef int Datum ;


 int Assert (int) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char const*) ;
 int datum_to_json (int ,int,int ,int ,int ,int) ;

__attribute__((used)) static void
array_dim_to_json(StringInfo result, int dim, int ndims, int *dims, Datum *vals,
      bool *nulls, int *valcount, JsonTypeCategory tcategory,
      Oid outfuncoid, bool use_line_feeds)
{
 int i;
 const char *sep;

 Assert(dim < ndims);

 sep = use_line_feeds ? ",\n " : ",";

 appendStringInfoChar(result, '[');

 for (i = 1; i <= dims[dim]; i++)
 {
  if (i > 1)
   appendStringInfoString(result, sep);

  if (dim + 1 == ndims)
  {
   datum_to_json(vals[*valcount], nulls[*valcount], result, tcategory,
        outfuncoid, 0);
   (*valcount)++;
  }
  else
  {




   array_dim_to_json(result, dim + 1, ndims, dims, vals, nulls,
         valcount, tcategory, outfuncoid, 0);
  }
 }

 appendStringInfoChar(result, ']');
}
