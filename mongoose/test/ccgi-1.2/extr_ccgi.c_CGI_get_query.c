
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGI_varlist ;


 int * CGI_decode_query (int *,int ) ;
 int getenv (char*) ;

CGI_varlist *
CGI_get_query(CGI_varlist *v) {
    return CGI_decode_query(v, getenv("QUERY_STRING"));
}
