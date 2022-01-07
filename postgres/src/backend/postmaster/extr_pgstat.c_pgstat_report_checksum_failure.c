
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MyDatabaseId ;
 int pgstat_report_checksum_failures_in_db (int ,int) ;

void
pgstat_report_checksum_failure(void)
{
 pgstat_report_checksum_failures_in_db(MyDatabaseId, 1);
}
