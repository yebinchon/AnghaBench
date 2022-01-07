
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int machname ;
typedef int gid_t ;
typedef int AUTH ;


 int MAXHOSTNAMELEN ;
 int NGRPS ;
 int abort () ;
 int * authunix_create (char*,int,int,int,int*) ;
 int getegid () ;
 int geteuid () ;
 int getgroups (int,int*) ;
 int gethostname (char*,int) ;

AUTH *
authunix_create_default()
{
 int len;
 char machname[MAXHOSTNAMELEN + 1];
 uid_t uid;
 gid_t gid;
 gid_t gids[NGRPS];

 if (gethostname(machname, sizeof machname) == -1)
  abort();
 machname[sizeof(machname) - 1] = 0;







 uid = 666;
 gid = 777;
 gids[0] = 0;
 len = 0;


 return (authunix_create(machname, uid, gid, len, gids));
}
