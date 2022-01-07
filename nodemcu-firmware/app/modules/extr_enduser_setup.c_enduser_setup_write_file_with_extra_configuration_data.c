
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keypairs_t {int keypairs_nb; char** keypairs; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int enduser_setup_free_keypairs (struct keypairs_t*) ;
 struct keypairs_t* enduser_setup_get_keypairs_from_form (char*,int) ;
 size_t strlen (char*) ;
 int vfs_close (int) ;
 int vfs_open (char*,char*) ;
 int vfs_write (int,char*,int) ;

__attribute__((used)) static int enduser_setup_write_file_with_extra_configuration_data(char *form_body, int form_length) {
  ENDUSER_SETUP_DEBUG("enduser: write data from posted form");
  ENDUSER_SETUP_DEBUG(form_body);




  struct keypairs_t *kp = enduser_setup_get_keypairs_from_form(form_body, form_length);
  if (kp == ((void*)0) || kp->keypairs_nb == 0) {
    ENDUSER_SETUP_DEBUG("enduser: No extra configuration.");
    if (kp != ((void*)0)) enduser_setup_free_keypairs(kp);
    return 1;
  }


  int p_file = vfs_open("eus_params.lua", "w");
  if (p_file == 0)
  {
    ENDUSER_SETUP_DEBUG("Can't open file in write mode!");
    enduser_setup_free_keypairs(kp);
    return 1;
  }







  vfs_write(p_file, "local p={}\n", 11);
  int idx = 0;
  for( idx = 0; idx < kp->keypairs_nb*2; idx=idx+2){
    char* to_write = kp->keypairs[idx];
    size_t length = strlen(to_write);

    vfs_write(p_file, "p.", 2);

    vfs_write(p_file, to_write, length);

    vfs_write(p_file, "=\"", 2);

    to_write = kp->keypairs[idx+1];
    length = strlen(to_write);
    vfs_write(p_file, to_write, length);

    vfs_write(p_file, "\"\n", 2);
  }
  vfs_write(p_file, "return p\n", 9);

  vfs_close(p_file);
  enduser_setup_free_keypairs(kp);

  return 0;
}
