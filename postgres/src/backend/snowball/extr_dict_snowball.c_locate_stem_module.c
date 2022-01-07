
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ enc; int (* create ) () ;int stem; scalar_t__ name; } ;
typedef TYPE_1__ stemmer_module ;
struct TYPE_6__ {int needrecode; int z; int stem; } ;
typedef TYPE_2__ DictSnowball ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 int GetDatabaseEncodingName () ;
 scalar_t__ PG_SQL_ASCII ;
 scalar_t__ PG_UTF8 ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 scalar_t__ pg_strcasecmp (scalar_t__,char const*) ;
 TYPE_1__* stemmer_modules ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static void
locate_stem_module(DictSnowball *d, const char *lang)
{
 const stemmer_module *m;





 for (m = stemmer_modules; m->name; m++)
 {
  if ((m->enc == PG_SQL_ASCII || m->enc == GetDatabaseEncoding()) &&
   pg_strcasecmp(m->name, lang) == 0)
  {
   d->stem = m->stem;
   d->z = m->create();
   d->needrecode = 0;
   return;
  }
 }




 for (m = stemmer_modules; m->name; m++)
 {
  if (m->enc == PG_UTF8 && pg_strcasecmp(m->name, lang) == 0)
  {
   d->stem = m->stem;
   d->z = m->create();
   d->needrecode = 1;
   return;
  }
 }

 ereport(ERROR,
   (errcode(ERRCODE_UNDEFINED_OBJECT),
    errmsg("no Snowball stemmer available for language \"%s\" and encoding \"%s\"",
     lang, GetDatabaseEncodingName())));
}
