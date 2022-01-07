
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned int VMADDR_CID_ANY ;
 unsigned int VMADDR_PORT_ANY ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void print_vsock_addr(FILE *fp, unsigned int cid, unsigned int port)
{
 if (cid == VMADDR_CID_ANY)
  fprintf(fp, "*:");
 else
  fprintf(fp, "%u:", cid);

 if (port == VMADDR_PORT_ANY)
  fprintf(fp, "*");
 else
  fprintf(fp, "%u", port);
}
