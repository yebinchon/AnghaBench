
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;
typedef int sdlTypePtr ;
typedef int sdlPtr ;
typedef int * encodePtr ;


 int * create_encoder (int ,int ,int const*,int const*) ;
 int * get_encoder (int ,char*,char*) ;

__attribute__((used)) static encodePtr get_create_encoder(sdlPtr sdl, sdlTypePtr cur_type, const xmlChar *ns, const xmlChar *type)
{
 encodePtr enc = get_encoder(sdl, (char*)ns, (char*)type);
 if (enc == ((void*)0)) {
  enc = create_encoder(sdl, cur_type, ns, type);
 }
 return enc;
}
