
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int HMENU ;


 scalar_t__ ID_BROWSE_GOTOFAV_FIRST ;
 int get_fav_url_from_id (int ,scalar_t__) ;
 int heap_free (int ) ;

__attribute__((used)) static void free_fav_menu_data(HMENU menu)
{
    LPWSTR url;
    int i;

    for(i = 0; (url = get_fav_url_from_id(menu, ID_BROWSE_GOTOFAV_FIRST + i)); i++)
        heap_free( url );
}
