
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitTempTableNamespace () ;
 int MyXactFlags ;
 scalar_t__ OidIsValid (int ) ;
 int XACT_FLAGS_ACCESSEDTEMPNAMESPACE ;
 int myTempNamespace ;

__attribute__((used)) static void
AccessTempTableNamespace(bool force)
{




 MyXactFlags |= XACT_FLAGS_ACCESSEDTEMPNAMESPACE;






 if (!force && OidIsValid(myTempNamespace))
  return;





 InitTempTableNamespace();
}
