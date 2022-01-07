
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct taskdialog_template_desc {int control_count; int controls; } ;
struct taskdialog_control {unsigned int template_size; int entry; TYPE_1__* template; } ;
typedef int nulW ;
typedef int WORD ;
typedef int WCHAR ;
typedef int UINT_PTR ;
struct TYPE_2__ {int style; short x; short y; short cx; short cy; int id; scalar_t__ dwExtendedStyle; } ;
typedef int HINSTANCE ;
typedef int DWORD ;
typedef TYPE_1__ DLGITEMTEMPLATE ;


 unsigned int ALIGNED_LENGTH (unsigned int,int) ;
 void* Alloc (unsigned int) ;
 scalar_t__ IS_INTRESOURCE (int const*) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int WS_VISIBLE ;
 int list_add_tail (int *,int *) ;
 int strlenW (int const*) ;
 int template_write_data (char**,int const*,int) ;

__attribute__((used)) static unsigned int taskdialog_add_control(struct taskdialog_template_desc *desc, WORD id, const WCHAR *class,
        HINSTANCE hInstance, const WCHAR *text, DWORD style, short x, short y, short cx, short cy)
{
    struct taskdialog_control *control = Alloc(sizeof(*control));
    unsigned int size, class_size, text_size;
    DLGITEMTEMPLATE *template;
    static const WCHAR nulW;
    const WCHAR *textW;
    char *ptr;

    class_size = (strlenW(class) + 1) * sizeof(WCHAR);

    if (IS_INTRESOURCE(text))
        text_size = LoadStringW(hInstance, (UINT_PTR)text, (WCHAR *)&textW, 0) * sizeof(WCHAR);
    else
    {
        textW = text;
        text_size = strlenW(textW) * sizeof(WCHAR);
    }

    size = sizeof(DLGITEMTEMPLATE);
    size += class_size;
    size += text_size + sizeof(WCHAR);
    size += sizeof(WORD);

    control->template = template = Alloc(size);
    control->template_size = size;

    template->style = WS_VISIBLE | style;
    template->dwExtendedStyle = 0;
    template->x = x;
    template->y = y;
    template->cx = cx;
    template->cy = cy;
    template->id = id;
    ptr = (char *)(template + 1);
    template_write_data(&ptr, class, class_size);
    template_write_data(&ptr, textW, text_size);
    template_write_data(&ptr, &nulW, sizeof(nulW));

    list_add_tail(&desc->controls, &control->entry);
    desc->control_count++;
    return ALIGNED_LENGTH(size, 3);
}
