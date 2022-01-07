
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTAB ;


 int num_seq_scans ;
 int ** seq_scan_tables ;

__attribute__((used)) static bool
has_seq_scans(HTAB *hashp)
{
 int i;

 for (i = 0; i < num_seq_scans; i++)
 {
  if (seq_scan_tables[i] == hashp)
   return 1;
 }
 return 0;
}
