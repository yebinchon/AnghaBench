
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clnt_ops {int cl_control; int cl_destroy; int cl_freeres; int cl_geterr; int cl_abort; int * cl_call; } ;
typedef int mutex_t ;


 int clnt_raw_abort ;
 int * clnt_raw_call ;
 int clnt_raw_control ;
 int clnt_raw_destroy ;
 int clnt_raw_freeres ;
 int clnt_raw_geterr ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct clnt_ops *
clnt_raw_ops()
{
 static struct clnt_ops ops;
 extern mutex_t ops_lock;



 mutex_lock(&ops_lock);
 if (ops.cl_call == ((void*)0)) {
  ops.cl_call = clnt_raw_call;
  ops.cl_abort = clnt_raw_abort;
  ops.cl_geterr = clnt_raw_geterr;
  ops.cl_freeres = clnt_raw_freeres;
  ops.cl_destroy = clnt_raw_destroy;
  ops.cl_control = clnt_raw_control;
 }
 mutex_unlock(&ops_lock);
 return (&ops);
}
