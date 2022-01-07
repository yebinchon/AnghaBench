
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int ucred_t ;
struct xucred {scalar_t__ cr_version; int cr_gid; int cr_uid; int gid; int uid; } ;
struct ucred {scalar_t__ cr_version; int cr_gid; int cr_uid; int gid; int uid; } ;
typedef int peercred ;
typedef int gid_t ;
typedef int ACCEPT_TYPE_ARG3 ;


 int ENOSYS ;
 int LOCAL_PEERCRED ;
 int SOL_SOCKET ;
 int SO_PEERCRED ;
 scalar_t__ XUCRED_VERSION ;
 int errno ;
 int getpeerucred (int,int **) ;
 scalar_t__ getsockopt (int,int ,int ,struct xucred*,int*) ;
 int ucred_free (int *) ;
 int ucred_getegid (int *) ;
 int ucred_geteuid (int *) ;

int
getpeereid(int sock, uid_t *uid, gid_t *gid)
{
 errno = ENOSYS;
 return -1;

}
