
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int uc ;
struct ucred {int gid; int uid; } ;
typedef int socklen_t ;
typedef int gid_t ;


 int SOL_SOCKET ;
 int SO_PEERCRED ;
 int getsockopt (int,int ,int ,struct ucred*,int*) ;

int
getpeereid(int s, uid_t *euid, gid_t *egid)
{
 struct ucred uc;
 socklen_t uclen;
 int error;

 uclen = sizeof(uc);
 error = getsockopt(s, SOL_SOCKET, SO_PEERCRED, &uc, &uclen);
 if (error != 0)
  return (error);


 *euid = uc.uid;
 *egid = uc.gid;
 return (0);
 }
