
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clnt_ops {int cl_control; int cl_destroy; int cl_freeres; int cl_geterr; int cl_abort; int * cl_call; } ;
typedef int sigset_t ;
typedef int mutex_t ;


 int SIG_SETMASK ;
 int clnt_vc_abort ;
 int * clnt_vc_call ;
 int clnt_vc_control ;
 int clnt_vc_destroy ;
 int clnt_vc_freeres ;
 int clnt_vc_geterr ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sigfillset (int *) ;
 int thr_sigsetmask (int ,int *,int *) ;

__attribute__((used)) static struct clnt_ops *
clnt_vc_ops()
{
 static struct clnt_ops ops;
 extern mutex_t ops_lock;

 sigset_t mask, newmask;



 sigfillset(&newmask);
 thr_sigsetmask(SIG_SETMASK, &newmask, &mask);



 mutex_lock(&ops_lock);
 if (ops.cl_call == ((void*)0)) {
  ops.cl_call = clnt_vc_call;
  ops.cl_abort = clnt_vc_abort;
  ops.cl_geterr = clnt_vc_geterr;
  ops.cl_freeres = clnt_vc_freeres;
  ops.cl_destroy = clnt_vc_destroy;
  ops.cl_control = clnt_vc_control;
 }
 mutex_unlock(&ops_lock);

 return (&ops);
}
