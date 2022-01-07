
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_CMP_severity ;


 int msg_total_size ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int msg_total_size_log_cb(const char *func, const char *file, int line,
                                 OSSL_CMP_severity level, const char *msg)
{
    msg_total_size += strlen(msg);
    return 1;
}
