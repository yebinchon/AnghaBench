
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_REQ ;
typedef int X509_NAME ;


 int X509_NAME_free (int *) ;
 int X509_REQ_set_subject_name (int *,int *) ;
 int * parse_name (char const*,unsigned long,int) ;

__attribute__((used)) static int build_subject(X509_REQ *req, const char *subject, unsigned long chtype,
                         int multirdn)
{
    X509_NAME *n;

    if ((n = parse_name(subject, chtype, multirdn)) == ((void*)0))
        return 0;

    if (!X509_REQ_set_subject_name(req, n)) {
        X509_NAME_free(n);
        return 0;
    }
    X509_NAME_free(n);
    return 1;
}
