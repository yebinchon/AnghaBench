
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PSTR (char*) ;





 int biton (scalar_t__) ;
 int biton32 (int ) ;
 int default_layer_state ;
 scalar_t__ layer_state ;
 int oled_write_P (int ,int) ;

__attribute__((used)) static void render_layer(void)
{
    uint8_t layer = layer_state ? biton(layer_state) : biton32(default_layer_state);



    oled_write_P(PSTR("Layer: "), 0);


    switch (layer)
    {
        case 129:
            oled_write_P(PSTR("BASE "), 0);
            break;

        case 131:
            oled_write_P(PSTR("GAME "), 0);
            break;

        case 130:
            oled_write_P(PSTR("LOWER"), 0);
            break;
        case 128:
            oled_write_P(PSTR("RAISE"), 0);
            break;





    }
}
