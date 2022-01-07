
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
typedef char u_char ;


 scalar_t__ GetDiskFreeSpace (char const*,size_t*,size_t*,size_t*,size_t*) ;
 int ngx_cpystrn (char*,char*,int) ;

size_t
ngx_fs_bsize(u_char *name)
{
    u_char root[4];
    u_long sc, bs, nfree, ncl;

    if (name[2] == ':') {
        ngx_cpystrn(root, name, 4);
        name = root;
    }

    if (GetDiskFreeSpace((const char *) name, &sc, &bs, &nfree, &ncl) == 0) {
        return 512;
    }

    return sc * bs;
}
