
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int std_strings; int encoding; } ;
typedef int PQExpBuffer ;
typedef TYPE_1__ Archive ;


 int appendReloptionsArray (int ,char const*,char const*,int ,int ) ;
 int pg_log_warning (char*) ;

__attribute__((used)) static void
appendReloptionsArrayAH(PQExpBuffer buffer, const char *reloptions,
      const char *prefix, Archive *fout)
{
 bool res;

 res = appendReloptionsArray(buffer, reloptions, prefix, fout->encoding,
        fout->std_strings);
 if (!res)
  pg_log_warning("could not parse reloptions array");
}
