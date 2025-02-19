
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME_ENTRY ;
typedef int X509_NAME ;


 int * X509_NAME_ENTRY_create_by_NID (int *,int,int,unsigned char const*,int) ;
 int X509_NAME_ENTRY_free (int *) ;
 int X509_NAME_add_entry (int *,int *,int,int) ;

int X509_NAME_add_entry_by_NID(X509_NAME *name, int nid, int type,
                               const unsigned char *bytes, int len, int loc,
                               int set)
{
    X509_NAME_ENTRY *ne;
    int ret;
    ne = X509_NAME_ENTRY_create_by_NID(((void*)0), nid, type, bytes, len);
    if (!ne)
        return 0;
    ret = X509_NAME_add_entry(name, ne, loc, set);
    X509_NAME_ENTRY_free(ne);
    return ret;
}
