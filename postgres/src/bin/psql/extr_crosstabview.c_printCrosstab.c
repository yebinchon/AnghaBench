
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {char** cells; int cellsadded; } ;
typedef TYPE_1__ printTableContent ;
struct TYPE_14__ {char* nullPrint; int title; int topt; } ;
typedef TYPE_2__ printQueryOpt ;
struct TYPE_15__ {size_t rank; char* name; } ;
typedef TYPE_3__ pivot_field ;
struct TYPE_16__ {int logfile; int queryFout; TYPE_2__ popt; } ;
typedef int PGresult ;


 int Assert (int ) ;
 char* PQfname (int const*,int) ;
 int PQftype (int const*,int) ;
 int PQgetisnull (int const*,int,int) ;
 char* PQgetvalue (int const*,int,int) ;
 int PQntuples (int const*) ;
 scalar_t__ bsearch (TYPE_3__*,TYPE_3__*,int,int,int ) ;
 char column_type_alignment (int ) ;
 int pg_free (int*) ;
 int pg_log_error (char*,char*,char*) ;
 scalar_t__ pg_malloc (int) ;
 int pivotFieldCompare ;
 int printTable (TYPE_1__*,int ,int,int ) ;
 int printTableAddHeader (TYPE_1__*,char*,int,char) ;
 int printTableCleanup (TYPE_1__*) ;
 int printTableInit (TYPE_1__*,int *,int ,int,int) ;
 TYPE_4__ pset ;

__attribute__((used)) static bool
printCrosstab(const PGresult *results,
     int num_columns, pivot_field *piv_columns, int field_for_columns,
     int num_rows, pivot_field *piv_rows, int field_for_rows,
     int field_for_data)
{
 printQueryOpt popt = pset.popt;
 printTableContent cont;
 int i,
    rn;
 char col_align;
 int *horiz_map;
 bool retval = 0;

 printTableInit(&cont, &popt.topt, popt.title, num_columns + 1, num_rows);




 printTableAddHeader(&cont,
      PQfname(results, field_for_rows),
      0,
      column_type_alignment(PQftype(results,
               field_for_rows)));






 horiz_map = (int *) pg_malloc(sizeof(int) * num_columns);
 for (i = 0; i < num_columns; i++)
  horiz_map[piv_columns[i].rank] = i;




 col_align = column_type_alignment(PQftype(results, field_for_data));

 for (i = 0; i < num_columns; i++)
 {
  char *colname;

  colname = piv_columns[horiz_map[i]].name ?
   piv_columns[horiz_map[i]].name :
   (popt.nullPrint ? popt.nullPrint : "");

  printTableAddHeader(&cont, colname, 0, col_align);
 }
 pg_free(horiz_map);


 for (i = 0; i < num_rows; i++)
 {
  int k = piv_rows[i].rank;

  cont.cells[k * (num_columns + 1)] = piv_rows[i].name ?
   piv_rows[i].name :
   (popt.nullPrint ? popt.nullPrint : "");
 }
 cont.cellsadded = num_rows * (num_columns + 1);




 for (rn = 0; rn < PQntuples(results); rn++)
 {
  int row_number;
  int col_number;
  pivot_field *rp,
       *cp;
  pivot_field elt;


  if (!PQgetisnull(results, rn, field_for_rows))
   elt.name = PQgetvalue(results, rn, field_for_rows);
  else
   elt.name = ((void*)0);
  rp = (pivot_field *) bsearch(&elt,
          piv_rows,
          num_rows,
          sizeof(pivot_field),
          pivotFieldCompare);
  Assert(rp != ((void*)0));
  row_number = rp->rank;


  if (!PQgetisnull(results, rn, field_for_columns))
   elt.name = PQgetvalue(results, rn, field_for_columns);
  else
   elt.name = ((void*)0);

  cp = (pivot_field *) bsearch(&elt,
          piv_columns,
          num_columns,
          sizeof(pivot_field),
          pivotFieldCompare);
  Assert(cp != ((void*)0));
  col_number = cp->rank;


  if (col_number >= 0 && row_number >= 0)
  {
   int idx;


   idx = 1 + col_number + row_number * (num_columns + 1);




   if (cont.cells[idx] != ((void*)0))
   {
    pg_log_error("\\crosstabview: query result contains multiple data values for row \"%s\", column \"%s\"",
        rp->name ? rp->name :
        (popt.nullPrint ? popt.nullPrint : "(null)"),
        cp->name ? cp->name :
        (popt.nullPrint ? popt.nullPrint : "(null)"));
    goto error;
   }

   cont.cells[idx] = !PQgetisnull(results, rn, field_for_data) ?
    PQgetvalue(results, rn, field_for_data) :
    (popt.nullPrint ? popt.nullPrint : "");
  }
 }





 for (i = 0; i < cont.cellsadded; i++)
 {
  if (cont.cells[i] == ((void*)0))
   cont.cells[i] = "";
 }

 printTable(&cont, pset.queryFout, 0, pset.logfile);
 retval = 1;

error:
 printTableCleanup(&cont);

 return retval;
}
