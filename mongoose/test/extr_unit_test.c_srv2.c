
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_connection {scalar_t__ user_data; int flags; } ;
struct TYPE_2__ {size_t len; scalar_t__ p; } ;
struct http_message {TYPE_1__ body; } ;
typedef int sig1 ;
typedef int cs_md5_ctx ;





 int MG_F_DELETE_CHUNK ;
 int cs_md5_final (unsigned char*,int *) ;
 int cs_md5_init (int *) ;
 int cs_md5_update (int *,unsigned char const*,size_t) ;
 int free (char*) ;
 int memcmp (unsigned char*,unsigned char*,int) ;
 char* read_file (char*,size_t*) ;

__attribute__((used)) static void srv2(struct mg_connection *c, int ev, void *ev_data) {
  static cs_md5_ctx c1, c2;
  struct http_message *hm = (struct http_message *) ev_data;

  switch (ev) {
    case 130:
      cs_md5_init(&c1);
      cs_md5_init(&c2);
      break;
    case 129:
      cs_md5_update(&c1, (const unsigned char *) hm->body.p, hm->body.len);
      c->flags |= MG_F_DELETE_CHUNK;
      break;
    case 128: {
      unsigned char sig1[16], sig2[sizeof(sig1)];
      size_t size;
      char *data = read_file("unit_test.c", &size);
      if (data != ((void*)0)) cs_md5_update(&c2, (const unsigned char *) data, size);
      free(data);
      cs_md5_final(sig1, &c1);
      cs_md5_final(sig2, &c2);
      *(int *) c->user_data = (memcmp(sig1, sig2, sizeof(sig1)) == 0) ? 1 : 2;
      break;
    }
  }
}
