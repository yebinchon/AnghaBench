
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* next_char; char* start; scalar_t__ end; char right; int offset_limit; scalar_t__ monospace; scalar_t__ offset; } ;
typedef TYPE_1__ scrolling_string_iterator_t ;


 int get_font_data_from_char (char) ;
 int rightmost_non_blank_column (int ) ;

__attribute__((used)) static void restart(scrolling_string_iterator_t *iter) {
    iter->next_char = iter->start;
    iter->offset = 0;
    if (iter->start < iter->end) {
        iter->right = *iter->next_char;
        if (iter->monospace) {
            iter->offset_limit = 5;
        } else {
            iter->offset_limit = rightmost_non_blank_column(get_font_data_from_char(iter->right)) + 1;
        }
    } else {
        iter->right = ' ';
        iter->offset_limit = 5;
    }
}
