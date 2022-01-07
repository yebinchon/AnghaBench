
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __test_metadata {scalar_t__ passed; } ;
typedef scalar_t__ pid_t ;


 int ASSERT_EQ (scalar_t__,int ) ;
 int SIGUSR1 ;
 scalar_t__ WEXITSTATUS (int) ;
 int kill (scalar_t__,int ) ;
 int waitpid (scalar_t__,int*,int ) ;

void teardown_trace_fixture(struct __test_metadata *_metadata,
       pid_t tracer)
{
 if (tracer) {
  int status;




  ASSERT_EQ(0, kill(tracer, SIGUSR1));
  ASSERT_EQ(tracer, waitpid(tracer, &status, 0));
  if (WEXITSTATUS(status))
   _metadata->passed = 0;
 }
}
