
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbuf ;


 scalar_t__ EAGAIN ;
 scalar_t__ errno ;
 int error (int,int ,char*,int,scalar_t__) ;
 int recv (int,char*,int,int ) ;

__attribute__((used)) static void do_recv_verify_empty(int fdr)
{
 char rbuf[1];
 int ret;

 ret = recv(fdr, rbuf, sizeof(rbuf), 0);
 if (ret != -1 || errno != EAGAIN)
  error(1, 0, "recv: not empty as expected (%d, %d)", ret, errno);
}
