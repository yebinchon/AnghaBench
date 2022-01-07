
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int CLIENT ;


 int * clnt_create_vers_timed (char const*,int const,int *,int const,int const,char const*,int *) ;

CLIENT *
clnt_create_vers(const char *hostname, const rpcprog_t prog, rpcvers_t *vers_out,
 const rpcvers_t vers_low, const rpcvers_t vers_high, const char *nettype)
{

 return (clnt_create_vers_timed(hostname, prog, vers_out, vers_low,
    vers_high, nettype, ((void*)0)));
}
