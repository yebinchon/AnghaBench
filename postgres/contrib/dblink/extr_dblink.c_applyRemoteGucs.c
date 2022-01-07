
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int Assert (int ) ;
 int GUC_ACTION_SAVE ;
 char* GetConfigOption (char const*,int,int) ;
 int NewGUCNestLevel () ;
 int PGC_S_SESSION ;
 int PGC_USERSET ;
 char* PQparameterStatus (int *,char const*) ;
 int lengthof (char const* const*) ;
 int set_config_option (char const*,char const*,int ,int ,int ,int,int ,int) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
applyRemoteGucs(PGconn *conn)
{
 static const char *const GUCsAffectingIO[] = {
  "DateStyle",
  "IntervalStyle"
 };

 int nestlevel = -1;
 int i;

 for (i = 0; i < lengthof(GUCsAffectingIO); i++)
 {
  const char *gucName = GUCsAffectingIO[i];
  const char *remoteVal = PQparameterStatus(conn, gucName);
  const char *localVal;







  if (remoteVal == ((void*)0))
   continue;





  localVal = GetConfigOption(gucName, 0, 0);
  Assert(localVal != ((void*)0));

  if (strcmp(remoteVal, localVal) == 0)
   continue;


  if (nestlevel < 0)
   nestlevel = NewGUCNestLevel();


  (void) set_config_option(gucName, remoteVal,
         PGC_USERSET, PGC_S_SESSION,
         GUC_ACTION_SAVE, 1, 0, 0);
 }

 return nestlevel;
}
