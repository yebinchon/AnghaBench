
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int authwarning ;

__attribute__((used)) static void
check_authmethod_unspecified(const char **authmethod)
{
 if (*authmethod == ((void*)0))
 {
  authwarning = 1;
  *authmethod = "trust";
 }
}
