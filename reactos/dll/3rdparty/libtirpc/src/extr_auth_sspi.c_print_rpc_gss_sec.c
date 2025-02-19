
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_sspi_sec {unsigned char qop; unsigned char svc; unsigned char cred; TYPE_1__* mech; } ;
struct TYPE_2__ {int length; scalar_t__ elements; } ;


 int fd_out ;
 int fprintf (int ,char*,...) ;

void print_rpc_gss_sec(struct rpc_sspi_sec *ptr)
{
    int i;
    char *p;

 fprintf(fd_out, "rpc_gss_sec:");
 if(ptr->mech == ((void*)0))
  fprintf(fd_out, "NULL gss_OID mech");
 else {
  fprintf(fd_out, "     mechanism_OID: {");
  p = (char *)ptr->mech->elements;
  for (i=0; i < ptr->mech->length; i++)

   if (i == 0) {
    int first, second;
    if (*p < 40) {
     first = 0;
     second = *p;
    }
    else if (40 <= *p && *p < 80) {
     first = 1;
     second = *p - 40;
    }
    else if (80 <= *p && *p < 127) {
     first = 2;
     second = *p - 80;
    }
    else {

     first = -1;
     second = -1;
    }
    fprintf(fd_out, " %u %u", first, second);
    p++;
   }
   else {
    fprintf(fd_out, " %u", (unsigned char)*p++);
   }
  fprintf(fd_out, " }\n");
 }
 fprintf(fd_out, "     qop: %d\n", ptr->qop);
 fprintf(fd_out, "     service: %d\n", ptr->svc);
 fprintf(fd_out, "     cred: %p\n", ptr->cred);
}
