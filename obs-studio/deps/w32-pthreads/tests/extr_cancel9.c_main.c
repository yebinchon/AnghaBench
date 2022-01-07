
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 void* PTHREAD_CANCELED ;
 int PTW32_ALERTABLE_ASYNC_CANCEL ;
 int Sleep (int) ;
 int assert (int) ;
 int printf (char*) ;
 scalar_t__ pthread_cancel (int ) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,void**) ;
 scalar_t__ pthread_win32_test_features_np (int ) ;
 int test_sleep ;
 int test_udp ;
 int test_wait ;

int
main ()
{
  pthread_t t;
  void *result;

  if (pthread_win32_test_features_np (PTW32_ALERTABLE_ASYNC_CANCEL))
    {
      printf ("Cancel sleeping thread.\n");
      assert (pthread_create (&t, ((void*)0), test_sleep, ((void*)0)) == 0);

      Sleep (100);
      assert (pthread_cancel (t) == 0);
      assert (pthread_join (t, &result) == 0);
      assert (result == PTHREAD_CANCELED && "test_sleep" != ((void*)0));

      printf ("Cancel waiting thread.\n");
      assert (pthread_create (&t, ((void*)0), test_wait, ((void*)0)) == 0);

      Sleep (100);
      assert (pthread_cancel (t) == 0);
      assert (pthread_join (t, &result) == 0);
      assert (result == PTHREAD_CANCELED && "test_wait");

      printf ("Cancel blocked thread (blocked on network I/O).\n");
      assert (pthread_create (&t, ((void*)0), test_udp, ((void*)0)) == 0);

      Sleep (100);
      assert (pthread_cancel (t) == 0);
      assert (pthread_join (t, &result) == 0);
      assert (result == PTHREAD_CANCELED && "test_udp" != ((void*)0));
    }
  else
    {
      printf ("Alertable async cancel not available.\n");
    }




  return 0;
}
