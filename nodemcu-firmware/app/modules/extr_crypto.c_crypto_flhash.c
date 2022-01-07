
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lua_State ;
struct TYPE_4__ {int digest_size; } ;
typedef TYPE_1__ digest_mech_info_t ;
typedef int digest ;


 int EINVAL ;
 int ENOMEM ;
 int bad_file (int *) ;
 int bad_mech (int *) ;
 int bad_mem (int *) ;
 TYPE_1__* crypto_digest_mech (char*) ;
 int crypto_fhash (TYPE_1__ const*,int *,int,int *) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushlstring (int *,int *,int) ;
 int vfs_close (int) ;
 int vfs_open (char const*,char*) ;
 int vfs_read_wrap ;

__attribute__((used)) static int crypto_flhash (lua_State *L)
{
  const digest_mech_info_t *mi = crypto_digest_mech (luaL_checkstring (L, 1));
  if (!mi)
    return bad_mech (L);
  const char *filename = luaL_checkstring (L, 2);


  int file_fd = vfs_open (filename, "r");
  if(!file_fd) {
    return bad_file(L);
  }


  uint8_t digest[mi->digest_size];
  int returncode = crypto_fhash (mi, &vfs_read_wrap, file_fd, digest);


  vfs_close(file_fd);

  if (returncode == ENOMEM)
    return bad_mem (L);
  else if (returncode == EINVAL)
    return bad_mech(L);
  else
    lua_pushlstring (L, digest, sizeof (digest));

  return 1;
}
