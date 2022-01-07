
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netpath_vars {int * netpath; int * netpath_start; int * nc_handlep; int * ncp_list; int valid; } ;


 int NETPATH ;
 int NP_VALID ;
 int endnetconfig (int *) ;
 int free (struct netpath_vars*) ;
 char* getenv (int ) ;
 int * malloc (int) ;
 int malloc_debug (int) ;
 int * setnetconfig () ;
 int strcpy (int *,char*) ;
 int strlen (char*) ;

void *
setnetpath()
{

    struct netpath_vars *np_sessionp;
    char *npp;





    if ((np_sessionp =
 (struct netpath_vars *)malloc(sizeof (struct netpath_vars))) == ((void*)0)) {
 return (((void*)0));
    }
    if ((np_sessionp->nc_handlep = setnetconfig()) == ((void*)0)) {

 return (((void*)0));
    }
    np_sessionp->valid = NP_VALID;
    np_sessionp->ncp_list = ((void*)0);
    if ((npp = getenv(NETPATH)) == ((void*)0)) {
 np_sessionp->netpath = ((void*)0);
    } else {
 (void) endnetconfig(np_sessionp->nc_handlep);
 np_sessionp->nc_handlep = ((void*)0);
 if ((np_sessionp->netpath = malloc(strlen(npp)+1)) == ((void*)0)) {
     free(np_sessionp);
     return (((void*)0));
 } else {
     (void) strcpy(np_sessionp->netpath, npp);
 }
    }
    np_sessionp->netpath_start = np_sessionp->netpath;
    return ((void *)np_sessionp);
}
