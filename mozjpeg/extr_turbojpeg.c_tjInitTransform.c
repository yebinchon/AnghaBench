
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int errStr; } ;
typedef TYPE_1__ tjinstance ;
typedef int * tjhandle ;


 int JMSG_LENGTH_MAX ;
 int MEMZERO (TYPE_1__*,int) ;
 int * _tjInitCompress (TYPE_1__*) ;
 int * _tjInitDecompress (TYPE_1__*) ;
 int errStr ;
 scalar_t__ malloc (int) ;
 int snprintf (int ,int ,char*) ;

tjhandle tjInitTransform(void)
{
  tjinstance *this = ((void*)0);
  tjhandle handle = ((void*)0);

  if ((this = (tjinstance *)malloc(sizeof(tjinstance))) == ((void*)0)) {
  snprintf(errStr, JMSG_LENGTH_MAX,
   "tjInitTransform(): Memory allocation failure");
  return ((void*)0);
 }
 MEMZERO(this, sizeof(tjinstance));
  snprintf(this->errStr, JMSG_LENGTH_MAX, "No error");
 handle=_tjInitCompress(this);
 if(!handle) return ((void*)0);
 handle=_tjInitDecompress(this);
 return handle;
}
