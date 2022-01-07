
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ utf8_char_t ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (scalar_t__*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 scalar_t__ malloc (int) ;
 int memset (scalar_t__*,char,size_t) ;

utf8_char_t* utf8_load_text_file(const char* path, size_t* size)
{
    utf8_char_t* data = ((void*)0);
    FILE* file = fopen(path, "r");

    if (file) {
        fseek(file, 0, SEEK_END);
        size_t file_size = ftell(file);
        fseek(file, 0, SEEK_SET);

        if (0 == (*size) || file_size <= (*size)) {
            (*size) = 0;
            data = (utf8_char_t*)malloc(1 + file_size);
            memset(data, '\0', file_size);

            if (data) {
                utf8_char_t* pos = data;
                size_t bytes_read = 0;

                while (0 < (bytes_read = fread(pos, 1, file_size - (*size), file))) {
                    pos += bytes_read;
                    (*size) += bytes_read;
                }
            }

            fclose(file);
        }
    }

    data[*size] = 0;
    return data;
}
