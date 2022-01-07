
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errStr; } ;
typedef TYPE_1__ tjinstance ;
typedef int * tjhandle ;


 int JMSG_LENGTH_MAX ;
 int MEMZERO (TYPE_1__*,int) ;
 int * _tjInitCompress (TYPE_1__*) ;
 int errStr ;
 scalar_t__ malloc (int) ;
 int snprintf (int ,int ,char*) ;

tjhandle tjInitCompress(void)
{
 tjinstance *this=((void*)0);

  if ((this = (tjinstance *)malloc(sizeof(tjinstance))) == ((void*)0)) {
  snprintf(errStr, JMSG_LENGTH_MAX,
   "tjInitCompress(): Memory allocation failure");
  return ((void*)0);
 }
 MEMZERO(this, sizeof(tjinstance));
  snprintf(this->errStr, JMSG_LENGTH_MAX, "No error");
 return _tjInitCompress(this);
}
