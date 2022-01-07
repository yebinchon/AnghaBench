
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ARRAY_SIZE (int *) ;
 int KEY_LENGTH ;
 int N_LISTEN ;
 int get_keys (int,int *) ;
 int memcpy (int *,int *,int ) ;
 int rand () ;
 int set_keys (int,int *) ;

__attribute__((used)) static void rotate_key(int fd)
{
 static int iter;
 static uint32_t new_key[4];
 uint32_t keys[8];
 uint32_t tmp_key[4];
 int i;

 if (iter < N_LISTEN) {

  if (iter == 0) {
   for (i = 0; i < ARRAY_SIZE(new_key); i++)
    new_key[i] = rand();
  }
  get_keys(fd, keys);
  memcpy(keys + 4, new_key, KEY_LENGTH);
  set_keys(fd, keys);
 } else {

  get_keys(fd, keys);
  memcpy(tmp_key, keys + 4, KEY_LENGTH);
  memcpy(keys + 4, keys, KEY_LENGTH);
  memcpy(keys, tmp_key, KEY_LENGTH);
  set_keys(fd, keys);
 }
 if (++iter >= (N_LISTEN * 2))
  iter = 0;
}
