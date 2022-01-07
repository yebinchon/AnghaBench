
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ub4 ;


 long PDO_OCI_PREFETCH_DEFAULT ;
 long PDO_OCI_PREFETCH_ROWSIZE ;
 long UB4MAXVAL ;

__attribute__((used)) static inline ub4 pdo_oci_sanitize_prefetch(long prefetch)
{
 if (prefetch < 0) {
  prefetch = 0;
 } else if (prefetch > UB4MAXVAL / PDO_OCI_PREFETCH_ROWSIZE) {
  prefetch = PDO_OCI_PREFETCH_DEFAULT;
 }
 return ((ub4)prefetch);
}
