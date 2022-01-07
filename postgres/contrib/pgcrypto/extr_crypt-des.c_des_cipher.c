
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint32 ;
typedef int buffer ;


 int des_init () ;
 int des_initialised ;
 int do_des (char,char,char*,char*,int) ;
 int memcpy (char*,char const*,int) ;
 char pg_hton32 (char) ;
 char pg_ntoh32 (char) ;
 int setup_salt (long) ;

__attribute__((used)) static int
des_cipher(const char *in, char *out, long salt, int count)
{
 uint32 buffer[2];
 uint32 l_out,
    r_out,
    rawl,
    rawr;
 int retval;

 if (!des_initialised)
  des_init();

 setup_salt(salt);


 memcpy(buffer, in, sizeof(buffer));

 rawl = pg_ntoh32(buffer[0]);
 rawr = pg_ntoh32(buffer[1]);

 retval = do_des(rawl, rawr, &l_out, &r_out, count);
 if (retval)
  return retval;

 buffer[0] = pg_hton32(l_out);
 buffer[1] = pg_hton32(r_out);


 memcpy(out, buffer, sizeof(buffer));

 return retval;
}
