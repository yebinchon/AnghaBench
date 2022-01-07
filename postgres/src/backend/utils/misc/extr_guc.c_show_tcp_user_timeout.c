
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nbuf ;


 int MyProcPort ;
 int pq_gettcpusertimeout (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
show_tcp_user_timeout(void)
{

 static char nbuf[16];

 snprintf(nbuf, sizeof(nbuf), "%d", pq_gettcpusertimeout(MyProcPort));
 return nbuf;
}
