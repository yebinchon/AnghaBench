
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int to_t ;


 int FALSE ;
 int TRUE ;
 int m_spi_no ;
 int platform_spi_send_recv (int ,int,int) ;
 int set_timeout (int *,int ) ;
 scalar_t__ timed_out (int *) ;

__attribute__((used)) static int sdcard_wait_not_busy( uint32_t us )
{
  to_t to;

  set_timeout( &to, us );
  while (platform_spi_send_recv( m_spi_no, 8, 0xff ) != 0xff) {
    if (timed_out( &to )) {
      goto fail;
    }
  }
  return TRUE;

  fail:
  return FALSE;
}
