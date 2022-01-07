
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* fieldSep; scalar_t__ standard; scalar_t__ html3; } ;
typedef TYPE_1__ PQprintOpt ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 int free (char*) ;

__attribute__((used)) static void
output_row(FILE *fout, const PQprintOpt *po, const int nFields, char **fields,
     unsigned char *fieldNotNum, int *fieldMax, char *border,
     const int row_index)
{
 int field_index;

 if (po->html3)
  fputs("<tr>", fout);
 else if (po->standard)
  fputs(po->fieldSep, fout);
 for (field_index = 0; field_index < nFields; field_index++)
 {
  char *p = fields[row_index * nFields + field_index];

  if (po->html3)
   fprintf(fout, "<td align=\"%s\">%s</td>",
     fieldNotNum[field_index] ? "left" : "right", p ? p : "");
  else
  {
   fprintf(fout,
     fieldNotNum[field_index] ?
     (po->standard ? " %-*s " : "%-*s") :
     (po->standard ? " %*s " : "%*s"),
     fieldMax[field_index],
     p ? p : "");
   if (po->standard || field_index + 1 < nFields)
    fputs(po->fieldSep, fout);
  }
  if (p)
   free(p);
 }
 if (po->html3)
  fputs("</tr>", fout);
 else if (po->standard)
  fprintf(fout, "\n%s", border);
 fputc('\n', fout);
}
