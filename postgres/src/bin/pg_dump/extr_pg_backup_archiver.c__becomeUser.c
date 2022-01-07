
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ currUser; } ;
typedef TYPE_1__ ArchiveHandle ;


 int _doSetSessionAuth (TYPE_1__*,char const*) ;
 int free (scalar_t__) ;
 scalar_t__ pg_strdup (char const*) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static void
_becomeUser(ArchiveHandle *AH, const char *user)
{
 if (!user)
  user = "";

 if (AH->currUser && strcmp(AH->currUser, user) == 0)
  return;

 _doSetSessionAuth(AH, user);





 if (AH->currUser)
  free(AH->currUser);
 AH->currUser = pg_strdup(user);
}
