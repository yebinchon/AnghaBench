
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int xmlChar ;
struct TYPE_15__ {int s; int member_0; } ;
typedef TYPE_2__ smart_str ;
typedef int sdlTypePtr ;
typedef TYPE_3__* sdlPtr ;
typedef TYPE_4__* encodePtr ;
typedef int encode ;
struct TYPE_14__ {int sdl_type; void* type_str; void* ns; } ;
struct TYPE_17__ {int to_zval; int to_xml; TYPE_1__ details; } ;
struct TYPE_16__ {int * encoders; } ;
typedef int HashTable ;


 int delete_encoder ;
 int efree (void*) ;
 void* emalloc (int) ;
 void* estrdup (char*) ;
 int memset (TYPE_4__*,int ,int) ;
 int sdl_guess_convert_xml ;
 int sdl_guess_convert_zval ;
 int smart_str_0 (TYPE_2__*) ;
 int smart_str_appendc (TYPE_2__*,char) ;
 int smart_str_appends (TYPE_2__*,char*) ;
 int smart_str_free (TYPE_2__*) ;
 TYPE_4__* zend_hash_find_ptr (int *,int ) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int zend_hash_update_ptr (int *,int ,TYPE_4__*) ;

__attribute__((used)) static encodePtr create_encoder(sdlPtr sdl, sdlTypePtr cur_type, const xmlChar *ns, const xmlChar *type)
{
 smart_str nscat = {0};
 encodePtr enc, enc_ptr;

 if (sdl->encoders == ((void*)0)) {
  sdl->encoders = emalloc(sizeof(HashTable));
  zend_hash_init(sdl->encoders, 0, ((void*)0), delete_encoder, 0);
 }
 smart_str_appends(&nscat, (char*)ns);
 smart_str_appendc(&nscat, ':');
 smart_str_appends(&nscat, (char*)type);
 smart_str_0(&nscat);
 if ((enc_ptr = zend_hash_find_ptr(sdl->encoders, nscat.s)) != ((void*)0)) {
  enc = enc_ptr;
  if (enc->details.ns) {
   efree(enc->details.ns);
  }
  if (enc->details.type_str) {
   efree(enc->details.type_str);
  }
 } else {
  enc_ptr = ((void*)0);
  enc = emalloc(sizeof(encode));
 }
 memset(enc, 0, sizeof(encode));

 enc->details.ns = estrdup((char*)ns);
 enc->details.type_str = estrdup((char*)type);
 enc->details.sdl_type = cur_type;
 enc->to_xml = sdl_guess_convert_xml;
 enc->to_zval = sdl_guess_convert_zval;

 if (enc_ptr == ((void*)0)) {
  zend_hash_update_ptr(sdl->encoders, nscat.s, enc);
 }
 smart_str_free(&nscat);
 return enc;
}
