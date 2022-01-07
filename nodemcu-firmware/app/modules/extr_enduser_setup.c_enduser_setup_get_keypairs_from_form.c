
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keypairs_t {void** keypairs; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int count_char_occurence (char*,char) ;
 struct keypairs_t* enduser_setup_alloc_keypairs (int) ;
 int enduser_setup_free_keypairs (struct keypairs_t*) ;
 int enduser_setup_http_urldecode (void*,char*,size_t,size_t) ;
 int free (char*) ;
 void* malloc (size_t) ;
 int os_bzero (char*,int) ;
 int os_memcpy (char*,char*,int) ;
 size_t strlen (char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static struct keypairs_t *enduser_setup_get_keypairs_from_form(char *form_body, int form_length) {
  int keypair_nb = count_char_occurence(form_body, '&') + 1;
  int equal_nb = count_char_occurence(form_body, '=');

  if (keypair_nb == 1 && equal_nb == 0) {
    ENDUSER_SETUP_DEBUG("No keypair in form body");
    return ((void*)0);
  }

  struct keypairs_t *kp = enduser_setup_alloc_keypairs(keypair_nb);

  int current_idx = 0;
  int err;

  char *body_copy = malloc(form_length+1);
  os_bzero(body_copy, form_length+1);
  os_memcpy(body_copy, form_body, form_length);
  char *tok = strtok(body_copy, "=");

  char last_tok = '=';
  while (tok) {
    size_t len = strlen(tok);
    kp->keypairs[current_idx] = malloc(len + 1);
    err = enduser_setup_http_urldecode(kp->keypairs[current_idx], tok, len, len + 1);
    if (err) {
      ENDUSER_SETUP_DEBUG("Unable to decode parameter");
      enduser_setup_free_keypairs(kp);
      free(body_copy);
      return ((void*)0);
    }

    current_idx++;
    if (current_idx > keypair_nb*2) {
      ENDUSER_SETUP_DEBUG("Too many keypairs!");
      enduser_setup_free_keypairs(kp);
      free(body_copy);
      return ((void*)0);
    }

    if (last_tok == '=') {
      tok = strtok(((void*)0), "&");
      last_tok='&';
    } else {
      tok = strtok(((void*)0), "=");
      last_tok='=';
    }
  }
  free(body_copy);
  return kp;
}
