
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUF_MEM_free (int ) ;
 int buf ;

void cleanup_tests(void)
{
    BUF_MEM_free(buf);
}
