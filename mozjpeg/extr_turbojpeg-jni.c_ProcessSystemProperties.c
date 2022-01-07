
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jstring ;
typedef int jmethodID ;
typedef int jclass ;
struct TYPE_5__ {int (* GetStaticMethodID ) (TYPE_1__**,int ,char*,char*) ;int (* FindClass ) (TYPE_1__**,char*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int bailif0 (int ) ;
 int prop2env (char*,char*) ;
 int stub1 (TYPE_1__**,char*) ;
 int stub2 (TYPE_1__**,int ,char*,char*) ;

int ProcessSystemProperties(JNIEnv *env)
{
  jclass cls;
  jmethodID mid;
  jstring jName, jValue;
  const char *value;

  bailif0(cls = (*env)->FindClass(env, "java/lang/System"));
  bailif0(mid = (*env)->GetStaticMethodID(env, cls, "getProperty",
    "(Ljava/lang/String;)Ljava/lang/String;"));

  prop2env("turbojpeg.optimize", "TJ_OPTIMIZE");
  prop2env("turbojpeg.arithmetic", "TJ_ARITHMETIC");
  prop2env("turbojpeg.restart", "TJ_RESTART");
  prop2env("turbojpeg.progressive", "TJ_PROGRESSIVE");
  return 0;

bailout:
  return -1;
}
