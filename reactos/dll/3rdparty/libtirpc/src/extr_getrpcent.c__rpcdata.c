
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcdata {int dummy; } ;


 scalar_t__ calloc (int,int) ;
 struct rpcdata* rpcdata ;

__attribute__((used)) static struct rpcdata *
_rpcdata()
{
 struct rpcdata *d = rpcdata;

 if (d == 0) {
  d = (struct rpcdata *)calloc(1, sizeof (struct rpcdata));
  rpcdata = d;
 }
 return (d);
}
