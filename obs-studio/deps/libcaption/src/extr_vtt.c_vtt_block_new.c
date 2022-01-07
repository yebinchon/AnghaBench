
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* cue_tail; TYPE_2__* cue_head; TYPE_2__* style_tail; TYPE_2__* style_head; TYPE_2__* region_tail; TYPE_2__* region_head; } ;
typedef TYPE_1__ vtt_t ;
struct TYPE_8__ {int type; double timestamp; double duration; size_t text_size; struct TYPE_8__* next; int * cue_id; int * cue_settings; } ;
typedef TYPE_2__ vtt_block_t ;
typedef char utf8_char_t ;
typedef enum VTT_BLOCK_TYPE { ____Placeholder_VTT_BLOCK_TYPE } VTT_BLOCK_TYPE ;






 TYPE_2__* malloc (int) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (char*,int ,size_t) ;
 scalar_t__ vtt_block_data (TYPE_2__*) ;

vtt_block_t* vtt_block_new(vtt_t* vtt, const utf8_char_t* data, size_t size, enum VTT_BLOCK_TYPE type)
{
    vtt_block_t* block = malloc(sizeof(vtt_block_t) + size + 1);
    block->next = ((void*)0);
    block->type = type;
    block->timestamp = 0.0;
    block->duration = 0.0;
    block->cue_settings = ((void*)0);
    block->cue_id = ((void*)0);
    block->text_size = size;

    switch (type) {
    case 129:
        if (vtt->region_head == ((void*)0)) {
            vtt->region_head = block;
        } else {
            vtt->region_tail->next = block;
        }
        vtt->region_tail = block;
        break;
    case 128:
        if (vtt->style_head == ((void*)0)) {
            vtt->style_head = block;
        } else {
            vtt->style_tail->next = block;
        }
        vtt->style_tail = block;
        break;
    case 131:
        if (vtt->cue_head == ((void*)0)) {
            vtt->cue_head = block;
        } else {
            vtt->cue_tail->next = block;
        }
        vtt->cue_tail = block;
        break;
    case 130:
        break;
    }

    utf8_char_t* dest = (utf8_char_t*)vtt_block_data(block);
    if (data) {
        memcpy(dest, data, size);
    } else {
        memset(dest, 0, size);
    }

    dest[size] = '\0';
    return block;
}
