
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status; char* sourceText; } ;


 TYPE_1__* ActivePortal ;
 int Assert (int ) ;
 scalar_t__ PORTAL_ACTIVE ;
 int errposition (int) ;
 int geterrposition () ;
 int getinternalerrposition () ;
 int internalerrposition (int) ;
 int internalerrquery (char const*) ;
 int match_prosrc_to_query (char const*,char const*,int) ;

bool
function_parse_error_transpose(const char *prosrc)
{
 int origerrposition;
 int newerrposition;
 const char *queryText;
 origerrposition = geterrposition();
 if (origerrposition <= 0)
 {
  origerrposition = getinternalerrposition();
  if (origerrposition <= 0)
   return 0;
 }


 Assert(ActivePortal && ActivePortal->status == PORTAL_ACTIVE);
 queryText = ActivePortal->sourceText;


 newerrposition = match_prosrc_to_query(prosrc, queryText, origerrposition);

 if (newerrposition > 0)
 {

  errposition(newerrposition);

  internalerrposition(0);
  internalerrquery(((void*)0));
 }
 else
 {




  errposition(0);
  internalerrposition(origerrposition);
  internalerrquery(prosrc);
 }

 return 1;
}
