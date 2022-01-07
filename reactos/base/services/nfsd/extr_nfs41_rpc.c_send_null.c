
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int member_0; int member_1; } ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int CLIENT ;


 int clnt_call (int *,int ,int ,int *,int ,int *,struct timeval) ;
 scalar_t__ xdr_void ;

__attribute__((used)) static enum clnt_stat send_null(CLIENT *client)
{
    struct timeval timeout = {10, 100};

    return clnt_call(client, 0,
                     (xdrproc_t)xdr_void, ((void*)0),
                     (xdrproc_t)xdr_void, ((void*)0), timeout);
}
