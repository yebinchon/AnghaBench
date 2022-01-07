
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Spoofchecker_object ;


 int SPOOFCHECKER_ERROR_P (int *) ;
 int intl_error_init (int ) ;

void spoofchecker_object_init(Spoofchecker_object* co)
{
 if (!co) {
  return;
 }

 intl_error_init(SPOOFCHECKER_ERROR_P(co));
}
