
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQEnvironmentOption ;
typedef int PGconn ;


 int build_startup_packet (int *,char*,int const*) ;
 scalar_t__ malloc (int) ;

char *
pqBuildStartupPacket3(PGconn *conn, int *packetlen,
       const PQEnvironmentOption *options)
{
 char *startpacket;

 *packetlen = build_startup_packet(conn, ((void*)0), options);
 startpacket = (char *) malloc(*packetlen);
 if (!startpacket)
  return ((void*)0);
 *packetlen = build_startup_packet(conn, startpacket, options);
 return startpacket;
}
