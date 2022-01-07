
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;
typedef int ArrayType ;


 int ARR_NDIM (int *) ;
 int ERRCODE_ARRAY_SUBSCRIPT_ERROR ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 int TEXTOID ;
 char* TextDatumGetCString (int ) ;
 int deconstruct_array (int *,int ,int,int,char,int **,int**,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ palloc (int) ;
 scalar_t__ strchr (char*,char) ;
 int string_is_ascii (char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static int
parse_key_value_arrays(ArrayType *key_array, ArrayType *val_array,
        char ***p_keys, char ***p_values)
{
 int nkdims = ARR_NDIM(key_array);
 int nvdims = ARR_NDIM(val_array);
 char **keys,
     **values;
 Datum *key_datums,
      *val_datums;
 bool *key_nulls,
      *val_nulls;
 int key_count,
    val_count;
 int i;

 if (nkdims > 1 || nkdims != nvdims)
  ereport(ERROR,
    (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
     errmsg("wrong number of array subscripts")));
 if (nkdims == 0)
  return 0;

 deconstruct_array(key_array,
       TEXTOID, -1, 0, 'i',
       &key_datums, &key_nulls, &key_count);

 deconstruct_array(val_array,
       TEXTOID, -1, 0, 'i',
       &val_datums, &val_nulls, &val_count);

 if (key_count != val_count)
  ereport(ERROR,
    (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
     errmsg("mismatched array dimensions")));

 keys = (char **) palloc(sizeof(char *) * key_count);
 values = (char **) palloc(sizeof(char *) * val_count);

 for (i = 0; i < key_count; i++)
 {
  char *v;


  if (key_nulls[i])
   ereport(ERROR,
     (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
      errmsg("null value not allowed for header key")));

  v = TextDatumGetCString(key_datums[i]);

  if (!string_is_ascii(v))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("header key must not contain non-ASCII characters")));
  if (strstr(v, ": "))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("header key must not contain \": \"")));
  if (strchr(v, '\n'))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("header key must not contain newlines")));
  keys[i] = v;


  if (val_nulls[i])
   ereport(ERROR,
     (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
      errmsg("null value not allowed for header value")));

  v = TextDatumGetCString(val_datums[i]);

  if (!string_is_ascii(v))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("header value must not contain non-ASCII characters")));
  if (strchr(v, '\n'))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("header value must not contain newlines")));

  values[i] = v;
 }

 *p_keys = keys;
 *p_values = values;
 return key_count;
}
