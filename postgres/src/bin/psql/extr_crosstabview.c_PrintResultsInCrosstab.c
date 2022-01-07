
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pivot_field ;
struct TYPE_7__ {int count; int root; } ;
typedef TYPE_1__ avl_tree ;
struct TYPE_8__ {int ** ctv_args; } ;
typedef int PGresult ;


 int Assert (int) ;
 int CROSSTABVIEW_MAX_COLUMNS ;
 scalar_t__ PGRES_TUPLES_OK ;
 scalar_t__ PQgetisnull (int const*,int,int) ;
 char* PQgetvalue (int const*,int,int) ;
 int PQnfields (int const*) ;
 int PQntuples (int const*) ;
 scalar_t__ PQresultStatus (int const*) ;
 int avlCollectFields (TYPE_1__*,int ,int *,int ) ;
 int avlFree (TYPE_1__*,int ) ;
 int avlInit (TYPE_1__*) ;
 int avlMergeValue (TYPE_1__*,char*,char*) ;
 int indexOfColumn (int *,int const*) ;
 int pg_free (int *) ;
 int pg_log_error (char*,...) ;
 scalar_t__ pg_malloc (int) ;
 int printCrosstab (int const*,int,int *,int,int,int *,int,int) ;
 TYPE_2__ pset ;
 int rankSort (int,int *) ;

bool
PrintResultsInCrosstab(const PGresult *res)
{
 bool retval = 0;
 avl_tree piv_columns;
 avl_tree piv_rows;
 pivot_field *array_columns = ((void*)0);
 pivot_field *array_rows = ((void*)0);
 int num_columns = 0;
 int num_rows = 0;
 int field_for_rows;
 int field_for_columns;
 int field_for_data;
 int sort_field_for_columns;
 int rn;

 avlInit(&piv_rows);
 avlInit(&piv_columns);

 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  pg_log_error("\\crosstabview: statement did not return a result set");
  goto error_return;
 }

 if (PQnfields(res) < 3)
 {
  pg_log_error("\\crosstabview: query must return at least three columns");
  goto error_return;
 }


 if (pset.ctv_args[0] == ((void*)0))
  field_for_rows = 0;
 else
 {
  field_for_rows = indexOfColumn(pset.ctv_args[0], res);
  if (field_for_rows < 0)
   goto error_return;
 }


 if (pset.ctv_args[1] == ((void*)0))
  field_for_columns = 1;
 else
 {
  field_for_columns = indexOfColumn(pset.ctv_args[1], res);
  if (field_for_columns < 0)
   goto error_return;
 }


 if (field_for_columns == field_for_rows)
 {
  pg_log_error("\\crosstabview: vertical and horizontal headers must be different columns");
  goto error_return;
 }


 if (pset.ctv_args[2] == ((void*)0))
 {
  int i;






  if (PQnfields(res) != 3)
  {
   pg_log_error("\\crosstabview: data column must be specified when query returns more than three columns");
   goto error_return;
  }

  field_for_data = -1;
  for (i = 0; i < PQnfields(res); i++)
  {
   if (i != field_for_rows && i != field_for_columns)
   {
    field_for_data = i;
    break;
   }
  }
  Assert(field_for_data >= 0);
 }
 else
 {
  field_for_data = indexOfColumn(pset.ctv_args[2], res);
  if (field_for_data < 0)
   goto error_return;
 }


 if (pset.ctv_args[3] == ((void*)0))
  sort_field_for_columns = -1;
 else
 {
  sort_field_for_columns = indexOfColumn(pset.ctv_args[3], res);
  if (sort_field_for_columns < 0)
   goto error_return;
 }







 for (rn = 0; rn < PQntuples(res); rn++)
 {
  char *val;
  char *val1;


  val = PQgetisnull(res, rn, field_for_columns) ? ((void*)0) :
   PQgetvalue(res, rn, field_for_columns);
  val1 = ((void*)0);

  if (sort_field_for_columns >= 0 &&
   !PQgetisnull(res, rn, sort_field_for_columns))
   val1 = PQgetvalue(res, rn, sort_field_for_columns);

  avlMergeValue(&piv_columns, val, val1);

  if (piv_columns.count > CROSSTABVIEW_MAX_COLUMNS)
  {
   pg_log_error("\\crosstabview: maximum number of columns (%d) exceeded",
       CROSSTABVIEW_MAX_COLUMNS);
   goto error_return;
  }


  val = PQgetisnull(res, rn, field_for_rows) ? ((void*)0) :
   PQgetvalue(res, rn, field_for_rows);

  avlMergeValue(&piv_rows, val, ((void*)0));
 }





 num_columns = piv_columns.count;
 num_rows = piv_rows.count;

 array_columns = (pivot_field *)
  pg_malloc(sizeof(pivot_field) * num_columns);

 array_rows = (pivot_field *)
  pg_malloc(sizeof(pivot_field) * num_rows);

 avlCollectFields(&piv_columns, piv_columns.root, array_columns, 0);
 avlCollectFields(&piv_rows, piv_rows.root, array_rows, 0);





 if (sort_field_for_columns >= 0)
  rankSort(num_columns, array_columns);




 retval = printCrosstab(res,
         num_columns, array_columns, field_for_columns,
         num_rows, array_rows, field_for_rows,
         field_for_data);

error_return:
 avlFree(&piv_columns, piv_columns.root);
 avlFree(&piv_rows, piv_rows.root);
 pg_free(array_columns);
 pg_free(array_rows);

 return retval;
}
