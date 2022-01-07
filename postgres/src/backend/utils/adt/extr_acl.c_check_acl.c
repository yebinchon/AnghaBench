
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Acl ;


 scalar_t__ ACLITEMOID ;
 scalar_t__ ARR_ELEMTYPE (int const*) ;
 scalar_t__ ARR_HASNULL (int const*) ;
 int ARR_NDIM (int const*) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
check_acl(const Acl *acl)
{
 if (ARR_ELEMTYPE(acl) != ACLITEMOID)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("ACL array contains wrong data type")));
 if (ARR_NDIM(acl) != 1)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("ACL arrays must be one-dimensional")));
 if (ARR_HASNULL(acl))
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("ACL arrays must not contain null values")));
}
