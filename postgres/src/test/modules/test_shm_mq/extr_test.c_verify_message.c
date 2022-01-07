
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;


 int ERROR ;
 int ereport (int ,int ) ;
 int errdetail (char*,scalar_t__,scalar_t__) ;
 int errmsg (char*) ;

__attribute__((used)) static void
verify_message(Size origlen, char *origdata, Size newlen, char *newdata)
{
 Size i;

 if (origlen != newlen)
  ereport(ERROR,
    (errmsg("message corrupted"),
     errdetail("The original message was %zu bytes but the final message is %zu bytes.",
         origlen, newlen)));

 for (i = 0; i < origlen; ++i)
  if (origdata[i] != newdata[i])
   ereport(ERROR,
     (errmsg("message corrupted"),
      errdetail("The new and original messages differ at byte %zu of %zu.", i, origlen)));
}
