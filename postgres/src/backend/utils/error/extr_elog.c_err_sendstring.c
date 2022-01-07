
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 scalar_t__ in_error_recursion_trouble () ;
 int pq_send_ascii_string (int ,char const*) ;
 int pq_sendstring (int ,char const*) ;

__attribute__((used)) static void
err_sendstring(StringInfo buf, const char *str)
{
 if (in_error_recursion_trouble())
  pq_send_ascii_string(buf, str);
 else
  pq_sendstring(buf, str);
}
