
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int MCS_AURQ ;
 int iso_init (int) ;
 int iso_send (int ) ;
 int out_uint8 (int ,int) ;
 int s_mark_end (int ) ;

__attribute__((used)) static void
mcs_send_aurq(void)
{
 STREAM s;

 s = iso_init(1);

 out_uint8(s, (MCS_AURQ << 2));

 s_mark_end(s);
 iso_send(s);
}
