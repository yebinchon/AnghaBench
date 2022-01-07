
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int dummy; } ;


 int errno ;
 struct passwd* getpwuid (int ) ;
 int getpwuid_r (int ,struct passwd*,char*,size_t,struct passwd**) ;

int
pqGetpwuid(uid_t uid, struct passwd *resultbuf, char *buffer,
     size_t buflen, struct passwd **result)
{




 errno = 0;
 *result = getpwuid(uid);

 return (*result == ((void*)0)) ? errno : 0;

}
