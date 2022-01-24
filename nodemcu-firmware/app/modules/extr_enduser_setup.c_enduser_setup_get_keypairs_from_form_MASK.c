#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct keypairs_t {void** keypairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char) ; 
 struct keypairs_t* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct keypairs_t*) ; 
 int FUNC4 (void*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 size_t FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 

__attribute__((used)) static struct keypairs_t *FUNC11(char *form_body, int form_length) {
  int keypair_nb = FUNC1(form_body, '&') + 1;
  int equal_nb = FUNC1(form_body, '=');
  
  if (keypair_nb == 1 && equal_nb == 0) {
    FUNC0("No keypair in form body");
    return NULL;
  }

  struct keypairs_t *kp = FUNC2(keypair_nb);

  int current_idx = 0;
  int err;

  char *body_copy = FUNC6(form_length+1);
  FUNC7(body_copy, form_length+1);
  FUNC8(body_copy, form_body, form_length);
  char *tok = FUNC10(body_copy, "=");
  
  char last_tok = '=';
  while (tok) {
    size_t len = FUNC9(tok);
    kp->keypairs[current_idx] = FUNC6(len + 1);
    err = FUNC4(kp->keypairs[current_idx], tok, len, len + 1);
    if (err) {
      FUNC0("Unable to decode parameter");
      FUNC3(kp);
      FUNC5(body_copy);
      return NULL;
    }

    current_idx++;
    if (current_idx > keypair_nb*2) {
      FUNC0("Too many keypairs!");
      FUNC3(kp);
      FUNC5(body_copy);
      return NULL;
    }

    if (last_tok == '=') {
      tok = FUNC10(NULL, "&"); // now search for the '&'
      last_tok='&';
    } else {
      tok = FUNC10(NULL, "="); // search for the next '='
      last_tok='=';
    }
  }
  FUNC5(body_copy);
  return kp;
}