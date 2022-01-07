
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* OBJ_nid2sn (int) ;

const char *ossl_prov_util_nid_to_name(int nid)
{
   return OBJ_nid2sn(nid);
}
